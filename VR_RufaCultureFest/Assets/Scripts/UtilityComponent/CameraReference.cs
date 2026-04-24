using UnityEngine;

public class CameraReference : MonoBehaviour, IReferenceSetter
{
    public Camera referencedCamera {  get; private set; }

    [SerializeField]
    ReferenceHandler so_referenceHandler;

    private void Awake()
    {
        so_referenceHandler.ev_CameraReference?.AddListener(SetCamera);
    }

    void SetCamera(Camera _cam)
    {
        referencedCamera = _cam;
    }

    public void Getter(UnityEngine.Object _variable)
    {
        _variable = referencedCamera;
    }
}
