using System;
using System.Threading;
using DG.Tweening;
using Plugins.BetterDebugger;
using UnityEngine;
using UnityEngine.UI;
using VInspector;
using EventHandler = ScriptableObject.EventHandler;

namespace UI
{
    [RequireComponent(typeof(AutomaticSender))]
    public class UIMenu : MonoBehaviour
    {
        [Header("Reference")] 
        [SerializeField] Camera mainCamera;
        [SerializeField] Canvas myCanvas;
        [SerializeField] CanvasGroup cv_Project;
        [SerializeField] EventHandler eventHandler;

        [Header("Project button")] 
        [SerializeField] float project_displace = 350f;
        [SerializeField] Button btn_SelectProject01;
        [SerializeField] Button btn_SelectProject02;
        [SerializeField] Button btn_LoadProject;
        [SerializeField] Button[] buttons_selector;
        [SerializeField] float project_timeToDisplace = 1f;
        [SerializeField] Ease project_easeType = Ease.OutSine;
        [SerializeField] float buttonScaleMultiplier = 1.2f;
        [SerializeField] float buttonFeedbackTime = 0.2f;
        [SerializeField] Ease buttonFeedbackEaseType = Ease.OutBounce;
        [SerializeField] float buttonCooldown = 10f;

        [Header("Project Page")] 
        [SerializeField] CanvasGroup cv_ProjectPage;
        [SerializeField] float projectPage_timeToFade;
        [SerializeField] Ease projectPage_EaseFade;

        [Header("Project 01")] 
        [SerializeField] CanvasGroup cv_Project_01;
        [Header("Project 02")] 
        [SerializeField] CanvasGroup cv_Project_02;

        private AutomaticSender log;
        private ProjectSelected selectedProject = ProjectSelected.None;
        private bool project_Cg_HasMoved;
        private Vector2 originalProjectPos;
        private RectTransform rt_Project;

        // Gestione corretta dei Token
        private CancellationTokenSource cts;

        public enum ProjectSelected { None, Project_01, Project_02 }

        void Awake()
        {
            log = GetComponent<AutomaticSender>();
            rt_Project = cv_Project.GetComponent<RectTransform>();
        }

        private void Start()
        {
            if (mainCamera != null) myCanvas.worldCamera = mainCamera;
            else log?.SendLog("Camera not set", this);
            originalProjectPos = cv_Project.GetComponent<RectTransform>().anchoredPosition;

            SetupUI();
        }

        void OnEnable()
        {
            SetupUI();
        }

        private void OnDisable()
        {
            CancelCooldown();
        }

        private void OnDestroy()
        {
            cts?.Dispose();
        }

        #region UNITY-BUTTONS

        public void OnClick_SelectProject01()
        {
            SelectorLogic(ProjectSelected.Project_01);
            UIClickFeedback(btn_SelectProject01);
            _ = StartCooldown(buttonCooldown);
        }

        public void OnClick_SelectProject02()
        {
            SelectorLogic(ProjectSelected.Project_02);
            UIClickFeedback(btn_SelectProject02);
            _ = StartCooldown(buttonCooldown);
        }

        public void OnClick_LoadProject()
        {
            eventHandler.ev_loadProject?.Invoke();
            UIClickFeedback(btn_LoadProject);
        }

        #endregion

        void SetupUI()
        {
            project_Cg_HasMoved = false;
            cv_Project.GetComponent<RectTransform>().anchoredPosition = originalProjectPos;
            cv_ProjectPage.alpha = 0f;
            cv_Project_01.gameObject.SetActive(false);
            cv_Project_02.gameObject.SetActive(false);
        }

        private async Awaitable StartCooldown(float _duration)
        {
            CancelCooldown();
            cts = CancellationTokenSource.CreateLinkedTokenSource(destroyCancellationToken);

            DeactivateButton();

            try
            {
                await Awaitable.WaitForSecondsAsync(_duration, cts.Token);
            }
            catch (OperationCanceledException)
            {
                
            }
            catch (Exception _e)
            {
                log?.SendLog($"Cooldown error: {_e.Message}", this);
            }
            finally
            {
                if (this != null && gameObject.activeInHierarchy)
                {
                    ActivateButton();
                }
            }
        }

        private void CancelCooldown()
        {
            if (cts == null) return;
            cts.Cancel();
            cts.Dispose();
            cts = null;
        }

        void DeactivateButton()
        {
            log?.SendLog("Bottoni disattivati", this);
            foreach (var _b in buttons_selector) _b.interactable = false;
        }

        void ActivateButton()
        {
            log?.SendLog("Bottoni attivati", this);
            foreach (var _b in buttons_selector) _b.interactable = true;
        }

        void UIClickFeedback(Button _b)
        {
            _b.transform.DOKill();
            _b.transform.DOScale(buttonScaleMultiplier, buttonFeedbackTime)
                .SetEase(buttonFeedbackEaseType)
                .OnComplete(() => _b.transform.DOScale(1f, buttonFeedbackTime)
                    .SetEase(buttonFeedbackEaseType));
        }

        void SelectorLogic(ProjectSelected _tmp)
        {
            ProjectSelector(_tmp);
            ProjectActivation();
            eventHandler.ev_Project?.Invoke((int)selectedProject);

            if (project_Cg_HasMoved) return;
            project_Cg_HasMoved = true;
            
            var _target = new Vector2(rt_Project.anchoredPosition.x - project_displace, rt_Project.anchoredPosition.y);

            var _seq = DOTween.Sequence();
            _seq.Append(rt_Project.DOAnchorPos(_target, project_timeToDisplace).SetEase(project_easeType));
            _seq.Append(cv_ProjectPage.DOFade(1f, projectPage_timeToFade).SetEase(projectPage_EaseFade));
        }

        void ProjectSelector(ProjectSelected _tmp)
        {
            selectedProject = _tmp;
        }

        void ProjectActivation()
        {
            cv_Project_01.gameObject.SetActive(selectedProject == ProjectSelected.Project_01);
            cv_Project_02.gameObject.SetActive(selectedProject == ProjectSelected.Project_02);
        }

        [Button]
        public void TestButtonLogic(ProjectSelected _tmp) => SelectorLogic(_tmp);
        [Button]
        public void TestButtonActivation() => OnClick_LoadProject();
    }
}