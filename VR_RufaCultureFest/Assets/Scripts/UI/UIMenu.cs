using System;
using System.Threading;
using DG.Tweening;
using Plugins.BetterDebugger;
using UnityEngine;
using UnityEngine.UI;
using VInspector;
using EventHandler = ScriptableObject.Event.EventHandler;

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
        [SerializeField] float resetUI_time = 20f;

        [Header("Project 01")] 
        [SerializeField] CanvasGroup cv_Project_01;
        [Header("Project 02")] 
        [SerializeField] CanvasGroup cv_Project_02;

        AutomaticSender log;
        ProjectSelected selectedProject = ProjectSelected.None;
        bool project_Cg_HasMoved;
        Vector2 originalProjectPos;
        RectTransform rt_Project;

        // Gestione corretta dei Token
        CancellationTokenSource cts_ButtonCooldown;
        CancellationTokenSource cts_ResetUi;

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
            cts_ButtonCooldown?.Dispose();
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
            cv_ProjectPage.alpha = 0f;
            cv_Project_01.gameObject.SetActive(false);
            cv_Project_02.gameObject.SetActive(false);
            
            rt_Project.DOAnchorPos(originalProjectPos, project_timeToDisplace).SetEase(project_easeType);
        }

        private async Awaitable ResetUI(float _duration)
        {
            cts_ResetUi = CancellationTokenSource.CreateLinkedTokenSource(destroyCancellationToken);

            try
            {
                await Awaitable.WaitForSecondsAsync(_duration, cts_ResetUi.Token);
            }
            catch (OperationCanceledException)
            {

            }
            catch (Exception _e)
            {
                log?.SendLog($"Cooldown UI error: {_e.Message}", this);
            }
            finally
            {
                if (this != null && gameObject.activeInHierarchy)
                {
                    SetupUI();
                }
            }
        }

        private async Awaitable StartCooldown(float _duration)
        {
            CancelCooldown();
            cts_ButtonCooldown = CancellationTokenSource.CreateLinkedTokenSource(destroyCancellationToken);

            DeactivateButton();

            try
            {
                await Awaitable.WaitForSecondsAsync(_duration, cts_ButtonCooldown.Token);
            }
            catch (OperationCanceledException)
            {
                
            }
            catch (Exception _e)
            {
                log?.SendLog($"Cooldown Button error: {_e.Message}", this);
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
            if (cts_ButtonCooldown == null) return;
            cts_ButtonCooldown.Cancel();
            cts_ButtonCooldown.Dispose();
            cts_ButtonCooldown = null;
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
            
            _ = ResetUI(buttonCooldown + resetUI_time);
            
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