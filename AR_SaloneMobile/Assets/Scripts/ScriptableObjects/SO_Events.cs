using System;
using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "SO_Events", menuName = "Scriptable Objects/SO_Events")]
public class SO_Events : ScriptableObject
{
   [NonSerialized] public UnityEvent<Pose> evt_placeObject;
    private void OnEnable()
    {
        if (evt_placeObject == null) evt_placeObject = new UnityEvent<Pose>();
    }
}
