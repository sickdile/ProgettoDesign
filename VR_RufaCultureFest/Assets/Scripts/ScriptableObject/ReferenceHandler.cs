using System;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.Events;
using Object = UnityEngine.Object;

[CreateAssetMenu(fileName = "ReferenceHandler", menuName = "Event/ReferenceHandler")]
public class ReferenceHandler : ScriptableObject
{
    public UnityEvent<Camera> ev_CameraReference;

    void OnEnable()
    {
        ev_CameraReference ??= new UnityEvent<Camera>();
    }

    void OnDisable()
    {
        ev_CameraReference = null;
    }

    public void CameraReference(Object _cam)
    {
        ev_CameraReference.Invoke(_cam.GetComponent<Camera>());
    }
}
