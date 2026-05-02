using System;
using System.Threading;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.Interaction.Toolkit.Interactors;

namespace XR_Related
{
    public class TeleportationInputHandler : MonoBehaviour
    {
        [Header("References")]
        [SerializeField] XRRayInteractor teleportInteractor;
        [SerializeField] InputActionProperty teleportActivatorAction;
        [SerializeField] InputActionProperty teleportCanceledAction;
        [SerializeField] InputActionProperty teleportDisposeAction;
        
        [Header("Ray Teleport Settings")]
        [SerializeField] float visibilityRayTime = 3f;
        
        private CancellationTokenSource cts;

        private void OnEnable()
        {
            teleportActivatorAction.action.performed += TeleportPerformed;
            teleportCanceledAction.action.canceled += TeleportCanceled;
            teleportDisposeAction.action.performed += TeleportCanceled;
        }

        private void OnDisable()
        {
            teleportActivatorAction.action.performed -= TeleportPerformed;
            teleportCanceledAction.action.canceled -= TeleportCanceled;
            teleportDisposeAction.action.performed -= TeleportCanceled;
            
            CancelCurrentTimer();
        }

        private void OnDestroy()
        {
            cts?.Dispose();
        }

        private void Start()
        {
            teleportInteractor?.gameObject.SetActive(false);
        }

        private void TeleportCanceled(InputAction.CallbackContext _obj)
        {
            CancelCurrentTimer();
            _ = TeleportCanceledThisFrame();
        }

        async Awaitable TeleportCanceledThisFrame()
        {
            await Awaitable.EndOfFrameAsync();
            teleportInteractor.gameObject.SetActive(false);
        }

        private void TeleportPerformed(InputAction.CallbackContext _obj)
        {
            teleportInteractor.gameObject.SetActive(true);
            
            _ = TurnOffTeleport();
        }

        private async Awaitable TurnOffTeleport()
        {
            CancelCurrentTimer();
            cts = CancellationTokenSource.CreateLinkedTokenSource(destroyCancellationToken);

            try
            {
                await Awaitable.WaitForSecondsAsync(visibilityRayTime, cts.Token);
                
                teleportInteractor.gameObject.SetActive(false);
            }
            catch (OperationCanceledException)
            {
                // task canceled
            }
        }

        private void CancelCurrentTimer()
        {
            if (cts == null) return;
            cts.Cancel();
            cts.Dispose();
            cts = null;
        }
    }
}