using System;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "SO_Events", menuName = "Scriptable Objects/SO_Events")]
public class SO_Events : ScriptableObject
{
    [NonSerialized] public UnityEvent<Pose> evt_placeObject;
    [NonSerialized] public UnityEvent evt_removeObject;
    [NonSerialized] public UnityEvent<int>evt_newObjectSelected;

    private void OnEnable()
    {
        if (evt_placeObject == null) evt_removeObject = new UnityEvent();
        if (evt_newObjectSelected == null) evt_newObjectSelected = new UnityEvent<int>();

        if (evt_placeObject == null) evt_placeObject = new UnityEvent<Pose>();
    }
}
