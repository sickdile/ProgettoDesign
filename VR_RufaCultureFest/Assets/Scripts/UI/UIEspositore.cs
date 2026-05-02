using System;
using System.Threading;
using DG.Tweening;
using Managers;
using Plugins.BetterDebugger;
using ScriptableObject.Exposition;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using VInspector;
using EventHandler = ScriptableObject.Event.EventHandler;

namespace UI
{
    [RequireComponent(typeof(AutomaticSender))]
    public class UIEspositore : MonoBehaviour
    {
        [Header("Expositor Information")] 
        [SerializeField] int expositorIndex;
        
        [Header("References")]
        [SerializeField] Photo myPhoto;
        [SerializeField] Camera mainCamera;
        [SerializeField] Canvas informationCanvas;
        [SerializeField] Canvas photoCanvas;
        [SerializeField] Transform detailsTransform;
        [SerializeField] Button closeButton;
        [SerializeField] EventHandler eventHandler;
        [SerializeField] ExpositionManager  expositionManager;
        
        [Header("Photo")]
        [SerializeField] Image photoRenderer;

        [SerializeField] bool setAutomaticDetails = true;
        [SerializeField] TextMeshProUGUI photoName;
        [SerializeField] TextMeshProUGUI photoDescription;
        [SerializeField] TextMeshProUGUI photoAuthor;
        [SerializeField] TextMeshProUGUI photoDimension;

        [Header("Details")]
        [SerializeField] float timeToAppear_Details = 0.5f;
        [SerializeField] Ease detailsEase =  Ease.OutElastic;
        [SerializeField] float detailsTimeMaterialLast = 0.1f;
        [SerializeField] Material restMaterial;
        [SerializeField] Material activeMaterial;
        [SerializeField] MeshRenderer detailsRenderer;
        [SerializeField] float maxDistanceFromCamera = 10f;
        
        // Private field
        AutomaticSender log;
        Transform originalDetailsTransform;
        
        // CT
        CancellationTokenSource cts_MaterialLast;
        CancellationTokenSource cts_CameraDistance;
        
        void OnValidate()
        {
            SetPhotoAndRatio();
            SetPhotoDetails();
        }

        void Start()
        {
            log =  GetComponent<AutomaticSender>();
            
            SetCamera();
            SetupDetails();
            AddMeToManager();
        }

        void AddMeToManager()
        {
            if (expositorIndex == 0)
            {
                log?.SendLog($"Change the index of expositor, current is {expositorIndex}", this);
            }
            expositionManager?.AddEspositore(expositorIndex, this);
        }

        void OnEnable()
        {
            eventHandler.ev_UpdateExposition?.AddListener(UpdateExposition);
        }

        void OnDisable()
        {
            eventHandler.ev_UpdateExposition?.RemoveListener(UpdateExposition);
        }

        public void SetMyPhoto(Photo _photo)
        {
            myPhoto = _photo;
        }

        #region Validation

        void SetPhotoAndRatio()
        {
            try
            {
                photoRenderer.sprite = myPhoto.PhotoImage;
                photoRenderer.preserveAspect = true;
            }
            catch
            {
                photoRenderer.sprite = null;
            }
        }

        void SetPhotoDetails()
        {
            if (!setAutomaticDetails) return;

            try
            {
                photoName.SetText(myPhoto.PhotoName);
                photoDescription.SetText(myPhoto.PhotoDescription);
                photoAuthor.SetText(myPhoto.PhotoAuthor);
                photoDimension.SetText(myPhoto.PhotoDimension);
            }
            catch
            {
                photoName.SetText("NOME");
                photoDescription.SetText("Descrizione Descrizione Descrizione Descrizione Descrizione Descrizione ");
                photoAuthor.SetText("AUTORE");
                photoDimension.SetText("DIM X DIM");
            }
        }

        #endregion

        void SetCamera()
        {
            if (mainCamera == null) return;
            photoCanvas.worldCamera = mainCamera;
            informationCanvas.worldCamera = mainCamera;
        }

        void UpdateExposition()
        {
            SetPhotoAndRatio();
            SetPhotoDetails();
        }

        void SetupDetails()
        {
            detailsTransform.localScale = Vector3.zero;
            detailsTransform.gameObject.SetActive(false);
        }
        
        void ActivateDetails()
        {
            detailsTransform.gameObject.SetActive(true);
            
            detailsTransform.DOScale(Vector3.one, timeToAppear_Details)
                .SetEase(detailsEase);
            
            _ = TooFarForDetails();
        }
        
        public void DeactivateDetails()
        {
            detailsTransform.DOScale(Vector3.zero, timeToAppear_Details)
                .SetEase(detailsEase)
                .OnComplete(() => detailsTransform.gameObject.SetActive(false));
            
            cts_CameraDistance.Cancel();
            cts_CameraDistance.Dispose();
            cts_CameraDistance = null;
        }
        
        [Button]
        public void DetailPressed()
        {
            _ = RemoveSelectedMaterial();
            ActivateDetails();
            detailsRenderer.material = activeMaterial;
        }

        async Awaitable RemoveSelectedMaterial()
        {
            cts_MaterialLast = CancellationTokenSource.CreateLinkedTokenSource(destroyCancellationToken);

            try
            {
                await Awaitable.WaitForSecondsAsync(detailsTimeMaterialLast, cts_MaterialLast.Token);
            }
            catch(OperationCanceledException)
            {

            }
            finally
            {
                if (this != null && gameObject.activeInHierarchy)
                {
                    detailsRenderer.material = restMaterial;
                }
            }
        }

        async Awaitable TooFarForDetails()
        {
            cts_CameraDistance = CancellationTokenSource.CreateLinkedTokenSource(destroyCancellationToken);

            try
            {
                while (Vector3.Distance(GetPlayerPosition(), gameObject.transform.position) < maxDistanceFromCamera)
                {
                    await Awaitable.NextFrameAsync(cts_CameraDistance.Token);
                }
            }
            catch (OperationCanceledException)
            {

            }
            finally
            {
                if (this != null && gameObject.activeInHierarchy)
                {
                    DeactivateDetails();
                }
            }
        }
        
        Vector3 GetPlayerPosition()
        {
            return mainCamera.transform.position;
        }
    }
}
