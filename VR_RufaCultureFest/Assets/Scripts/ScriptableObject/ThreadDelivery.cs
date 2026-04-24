using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "ThreadDelivery", menuName = "ThreadDelivery")]
public class ThreadDelivery : ScriptableObject
{
    [Header("Event in execution Order")]
    // num 1
    public UnityEvent ev_getReference;
    // num 2
    public UnityEvent ev_referenceBinding;

    private void OnEnable()
    {
        ev_getReference ??= new UnityEvent();
        ev_referenceBinding ??= new UnityEvent();
    }

    private void OnDisable()
    {
        ev_getReference = null;
        ev_referenceBinding = null;
    }
}
