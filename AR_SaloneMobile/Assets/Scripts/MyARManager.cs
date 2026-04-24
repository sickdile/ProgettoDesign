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
        refTo_SO_Events.evt_newObjectSelected.AddListener(SetCurrentObject);
        refTo_SO_Events.evt_placeObject.AddListener(InstantiateCurrentObjectOn);
        refTo_SO_Events.evt_removeObject.AddListener(RemoveObjectFromScene);
    }
    private void OnDisable()
    {
        refTo_SO_Events.evt_placeObject.RemoveAllListeners();
    }
    #endregion

    public void SetCurrentObject(int _id)
    {
        refTo_SO_Data.SetIndex(_id);
        Debug.Log($"Ho cambiato indice in {_id}");
    }

    /// <summary>
    /// Istanzia l'oggetto corrente (lo sa lo Scriptable Object SO_Data) su Pose.
    /// </summary>
    /// <param name="_pose"></param>
    public void InstantiateCurrentObjectOn(Pose _pose)
    {
        GameObject obj = refTo_SO_Data.objPrefabs[refTo_SO_Data.currentObjIndex];
        currentObjectInstantiated = Instantiate(obj, _pose.position, _pose.rotation);
    }

    /// <summary>
    /// Distrugge l'oggetto attualmente istanziato.
    /// </summary>
    public void RemoveObjectFromScene()
    {
        if (currentObjectInstantiated != null) Destroy(currentObjectInstantiated);
    }


}
