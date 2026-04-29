using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "EventHandler", menuName = "Event/EventHandler")]
public class EventHandler : ScriptableObject
{
    public UnityEvent<int> ev_Project;

    private void OnEnable()
    {
        ev_Project ??= new UnityEvent<int>();
    }

    private void OnDisable()
    {
        ev_Project = null;
    }
}
