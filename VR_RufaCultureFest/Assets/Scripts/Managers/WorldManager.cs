using System;
using UnityEngine;

namespace Managers
{
    public class WorldManager : MonoBehaviour
    {
        [Header("Reference")]
        [SerializeField]
        EventHandler eventHandler;

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
