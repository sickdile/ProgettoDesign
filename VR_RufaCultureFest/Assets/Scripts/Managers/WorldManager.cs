using UnityEngine;

public class WorldManager : MonoBehaviour
{
    [Header("Reference")]
    [SerializeField]
    EventHandler eventHandler;

    private Project currentProject;

    enum Project
    {
        none,
        Project_01,
        Project_02
    }

    private void OnEnable()
    {
        eventHandler.ev_Project?.AddListener(SetCurrentProject);
    }

    private void SetCurrentProject(int _proj_index)
    {
        currentProject = SelectProject(_proj_index);
    }

    Project SelectProject(int _proj_index)
    {
        switch (_proj_index)
        {
            case 0:
                return Project.none;
            case 1:
                return Project.Project_01;
            case 2:
                return Project.Project_02;
            default:
                return Project.none;
        }
    }
}
