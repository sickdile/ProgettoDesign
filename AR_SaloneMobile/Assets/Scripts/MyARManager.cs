using System;
using UnityEngine;
using UnityEngine.Events;

public class MyARManager : MonoBehaviour
{
    [SerializeField] GameObject[] testPref;
    [SerializeField] SO_Events refTo_SO_Events;
    [SerializeField] SO_Data refTo_SO_Data;

    [NonSerialized] public GameObject currentObjectInstantiated;

    #region INIT
    private void OnEnable()
    {
        refTo_SO_Events.evt_placeObject.AddListener(InstantiateCurrentObjectOn);
        refTo_SO_Events.evt_removeObject.AddListener(RemoveObjectFromScene);
    }
    private void OnDisable()
    {
        refTo_SO_Events.evt_placeObject.RemoveAllListeners();
    }
    #endregion

    public void InstantiateCurrentObjectOn(Pose _pose)
    {
        GameObject obj = refTo_SO_Data.objPrefabs[refTo_SO_Data.currentObjIndex];
        currentObjectInstantiated = Instantiate(obj, _pose.position, _pose.rotation);
    }
    public void RemoveObjectFromScene()
    {
        Destroy(currentObjectInstantiated);
    }
}
