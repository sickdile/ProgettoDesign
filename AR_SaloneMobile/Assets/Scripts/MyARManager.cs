using UnityEngine;
using UnityEngine.Events;

public class MyARManager : MonoBehaviour
{
    [SerializeField] GameObject testPref;
    [SerializeField] SO_Events refTo_SO_Events;

    private void OnEnable()
    {
        refTo_SO_Events.evt_placeObject.AddListener(InstantiateCurrentObjectOn);
    }
    private void OnDisable()
    {
        refTo_SO_Events.evt_placeObject.RemoveAllListeners();
    }

    public void InstantiateCurrentObjectOn(Pose _pose)
    {
        Instantiate(testPref, _pose.position, _pose.rotation);
    }
}
