using Plugins.BetterDebugger;
using UnityEngine;

[RequireComponent(typeof(CameraReference))]
public class UI_Menu : MonoBehaviour
{
    Camera mainCamera;

    CameraReference refTo_Camera;

    [Header("Event Reference")]

    [SerializeField]
    ThreadDelivery threadSubscription;

    AutomaticSender log;

    private void Awake()
    {
        threadSubscription.ev_referenceBinding?.AddListener(ReferenceBinder);
    }

    private void Start()
    {
        refTo_Camera = GetComponent<CameraReference>();

        log = GetComponent<AutomaticSender>();
    }

    void ReferenceBinder()
    {
        refTo_Camera.Getter(mainCamera);
        log.SendLog($"camera set : {mainCamera}", this);
    }
}
