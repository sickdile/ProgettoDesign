using System;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "SO_Events", menuName = "Scriptable Objects/SO_Events")]
public class SO_Events : ScriptableObject
{
    [NonSerialized] public UnityEvent<Pose> evt_placeObject;
    [NonSerialized] public UnityEvent evt_removeObject;

    private void OnEnable()
    {
        if (evt_placeObject == null) evt_placeObject = new UnityEvent<Pose>();
        if (evt_placeObject == null) evt_removeObject = new UnityEvent();
    }
}
