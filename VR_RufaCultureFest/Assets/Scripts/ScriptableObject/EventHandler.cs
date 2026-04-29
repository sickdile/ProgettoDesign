using UnityEngine;
using UnityEngine.Events;

namespace ScriptableObject
{
    [CreateAssetMenu(fileName = "EventHandler", menuName = "Event/EventHandler")]
    public class EventHandler : UnityEngine.ScriptableObject
    {
        public UnityEvent<int> ev_Project;
        public UnityEvent ev_loadProject;

        private void OnEnable()
        {
            ev_Project ??= new UnityEvent<int>();
            ev_loadProject ??= new UnityEvent();
        }

        private void OnDisable()
        {
            ev_Project = null;
            ev_loadProject = null;
        }
    }
}
