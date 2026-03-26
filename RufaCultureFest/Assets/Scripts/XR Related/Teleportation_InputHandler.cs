using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.Interaction.Toolkit.Interactors;

public class Teleportation_InputHandler : MonoBehaviour
{
    public XRRayInteractor teleportInteractor;
    public InputActionProperty teleportActivatorAction;

    private void Start()
    {
        teleportInteractor.gameObject.SetActive(false);
        teleportActivatorAction.action.performed += TeleportPerformed;
        teleportActivatorAction.action.canceled += TeleportCanceled;
    }

    private void TeleportCanceled(InputAction.CallbackContext obj)
    {
        teleportInteractor.gameObject.SetActive(false);
    }

    private void TeleportPerformed(InputAction.CallbackContext obj)
    {
        teleportInteractor.gameObject.SetActive(true);
    }
}
