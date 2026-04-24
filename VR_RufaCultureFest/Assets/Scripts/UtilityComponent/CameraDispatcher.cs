using Unity.VisualScripting;
using UnityEngine;

public class CameraDispatcher : ObjectDispatcher
{

    public override void SetReference()
    {
        refHandler.ev_CameraReference?.Invoke(objectToSend.GetComponent<Camera>());
    }
}