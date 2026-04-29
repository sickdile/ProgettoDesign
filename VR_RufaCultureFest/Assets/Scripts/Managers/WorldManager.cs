using System;
using Plugins.BetterDebugger;
using UnityEngine;
using EventHandler = ScriptableObject.EventHandler;

namespace Managers
{
    [RequireComponent(typeof(AutomaticSender))]
    public class WorldManager : MonoBehaviour
    {
        [Header("Reference")]
        [SerializeField]
        AutomaticSender log;
        [SerializeField]
        EventHandler eventHandler;
        [SerializeField]
        GameObject project_01;
        [SerializeField]
        GameObject project_02;

        private Project currentProject;

        enum Project
        {
            None,
            Project_01,
            Project_02
        }

        private void OnEnable()
        {
            eventHandler.ev_Project?.AddListener(SetCurrentProject);
            eventHandler.ev_loadProject?.AddListener(LoadCurrentProject);
        }

        void Start()
        {
            log = GetComponent<AutomaticSender>();
        }

        void LoadCurrentProject()
        {
            log.SendLog($"Loading {currentProject.ToString()}", this);
            
            switch (currentProject)
            {
                case Project.None:
                    break;
                case Project.Project_01:
                    project_01.SetActive(true);
                    project_02.SetActive(false);
                    break;
                case Project.Project_02:
                    project_02.SetActive(true);
                    project_01.SetActive(false);
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        private void SetCurrentProject(int _proj_Index)
        {
            currentProject = SelectProject(_proj_Index);
            return;

            Project SelectProject(int _proj)
            {
                return _proj switch
                {
                    0 => Project.None,
                    1 => Project.Project_01,
                    2 => Project.Project_02,
                    _ => throw new ArgumentOutOfRangeException()
                };
            }
        }
    }
}
