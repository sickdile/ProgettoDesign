using System;
using DG.Tweening;
using Plugins.BetterDebugger;
using UnityEngine;
using VInspector;

namespace UI
{
    public class UIMenu : MonoBehaviour
    {
        [Header("Reference")] [SerializeField] Camera mainCamera;
        [SerializeField] Canvas myCanvas;
        [SerializeField] CanvasGroup cv_Project;
        [SerializeField] EventHandler eventHandler;

        [Header("Project button")] [SerializeField]
        float project_displace = 350f;

        [SerializeField] float project_timeToDisplace = 1f;
        [SerializeField] Ease project_easeType = Ease.OutSine;

        [Header("Project Page")] [SerializeField]
        CanvasGroup cv_ProjectPage;

        [SerializeField] float projectPage_timeToFade;
        [SerializeField] Ease projectPage_EaseFade;

        [Header("Project 01")] [SerializeField]
        CanvasGroup cv_Project_01;

        [Header("Project 02")] [SerializeField]
        CanvasGroup cv_Project_02;


        // Component
        AutomaticSender log;

        // Private variables

        ProjectSelected selectedProject = ProjectSelected.None;

        bool project_Cg_HasMoved;

        public enum ProjectSelected
        {
            None,
            Project_01,
            Project_02
        }

        private void Start()
        {
            log = GetComponent<AutomaticSender>();

            myCanvas.worldCamera = mainCamera;
        }

        // TODO - Muovi canvas group progetti di 350 sulla x
        
        [Button]
        public void TestMoveProjectGroup(ProjectSelected _tmp_ProjectSelected)
        {
            MoveProjectGroup(_tmp_ProjectSelected);
        }
        
        public void MoveProjectGroup(ProjectSelected _tmp_ProjectSelected)
        {
            // Project Choose
            ProjectSelector(_tmp_ProjectSelected);
            ProjectActivation();
            
            // Do Once
            if (project_Cg_HasMoved) return;
            project_Cg_HasMoved = true;
            
            // UI animation
            var _seq = DOTween.Sequence();
            // Muove il canvas del selettore
            _seq.Append(
                cv_Project.transform.DOMoveX(project_displace, project_timeToDisplace).SetEase(project_easeType));
            // Fa apparire il canvas della conferma
            _seq.Append(
                cv_ProjectPage.DOFade(1f, projectPage_timeToFade).SetEase(projectPage_EaseFade));
        }

        void ProjectSelector(ProjectSelected _tmp_ProjectSelected)
        {
            if (_tmp_ProjectSelected == selectedProject) return;
            switch (_tmp_ProjectSelected)
            {
                case ProjectSelected.None:
                    selectedProject = ProjectSelected.None;
                    log.SendLog($"Project Selector Error, current selected {_tmp_ProjectSelected.ToString()}", this);
                    break;
                case ProjectSelected.Project_01:
                    selectedProject = ProjectSelected.Project_01;
                    break;
                case ProjectSelected.Project_02:
                    selectedProject = ProjectSelected.Project_02;
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        void ProjectActivation()
        {
            switch (selectedProject)
            {
                case ProjectSelected.None:
                    log.SendLog($"Project Activation Error, current selected {selectedProject.ToString()}", this);
                    break;
                case ProjectSelected.Project_01:
                    cv_Project_01.gameObject.SetActive(true);
                    cv_Project_02.gameObject.SetActive(false);
                    break;
                case ProjectSelected.Project_02:
                    cv_Project_02.gameObject.SetActive(true);
                    cv_Project_01.gameObject.SetActive(false);
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }
    }
}