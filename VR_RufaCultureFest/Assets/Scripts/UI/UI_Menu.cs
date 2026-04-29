using DG.Tweening;
using Plugins.BetterDebugger;
using UnityEngine;
using VInspector;

public class UI_Menu : MonoBehaviour
{
    [Header("Reference")]

    [SerializeField]
    Camera mainCamera;
    [SerializeField]
    Canvas myCanvas;
    [SerializeField]
    CanvasGroup cv_Project;
    [SerializeField]
    EventHandler eventHandler;

    [Header("Project button")]
    [SerializeField]
    float project_displace = 350f;
    [SerializeField]
    float project_timeToDisplace = 1f;
    [SerializeField]
    Ease project_easeType = Ease.OutSine;

    [Header("Project Page")]
    [SerializeField]
    CanvasGroup cv_ProjectPage;
    [SerializeField]
    float projectPage_timeToFade;
    [SerializeField]
    Ease projectPage_EaseFade;

    [Header("Project 01")]
    [SerializeField]
    CanvasGroup cv_Project_01;

    [Header("Project 02")]
    CanvasGroup cv_Project_02;


    // Component
    AutomaticSender log;

    // Private variables

    ProjectSelected selectedProject = ProjectSelected.none;

    bool project_cg_hasMoved = false;

    public enum ProjectSelected
    {
        none,
        project_01,
        project_02
    }

    private void Awake()
    {

    }

    private void Start()
    {
        log = GetComponent<AutomaticSender>();

        myCanvas.worldCamera = mainCamera;
    }

    // TODO - Muovi canvas group progetti di 350 sulla x

    [Button]
    public void MoveProjectGroup()
    {
        if (project_cg_hasMoved) return;
        cv_Project.transform.DOMoveX(project_displace, project_timeToDisplace).SetEase(project_easeType);

        cv_ProjectPage.DOFade(1f, projectPage_timeToFade).SetEase(projectPage_EaseFade);
    }

    public void ProjectSelector(ProjectSelected _tmp_projectSelected)
    {
        if(_tmp_projectSelected == selectedProject) return;

        if(_tmp_projectSelected != selectedProject)
        {
            switch (selectedProject)
            {
                case ProjectSelected.none:
                    log.SendLog($"Project Selection Error, current selected {_tmp_projectSelected.ToString()}", this);
                    break;
                case ProjectSelected.project_01:
                    cv_Project_02.enabled = false;
                    cv_Project_01.enabled = true;
                    break;
                case ProjectSelected.project_02:
                    cv_Project_01.enabled = false;
                    cv_Project_02.enabled = true;
                    break;
                default:
                    log.SendLog($"Project Selection Error, current selected {_tmp_projectSelected.ToString()}", this);
                    break;
            }
        }
    }
}
