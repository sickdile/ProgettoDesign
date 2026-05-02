using System;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "SO_Events", menuName = "Scriptable Objects/SO_Events")]
public class SO_Events : ScriptableObject
{
    [NonSerialized] public UnityEvent<Pose> evt_placeObject;
    [NonSerialized] public UnityEvent evt_esploso;
    [NonSerialized] public UnityEvent evt_removeObject;
    [NonSerialized] public UnityEvent<int> evt_newObjectSelected;
    [NonSerialized] public UnityEvent<int> evt_newPresetSelected;
    [NonSerialized] public UnityEvent evt_UIChange;

    private void OnEnable()
    {
        if (evt_removeObject == null) evt_removeObject = new UnityEvent();
        if (evt_UIChange == null) evt_UIChange = new UnityEvent();
        if (evt_newObjectSelected == null) evt_newObjectSelected = new UnityEvent<int>();
        if (evt_newPresetSelected == null) evt_newPresetSelected = new UnityEvent<int>();
        if (evt_placeObject == null) evt_placeObject = new UnityEvent<Pose>();
        if (evt_esploso == null) evt_esploso = new UnityEvent();

    }
}
