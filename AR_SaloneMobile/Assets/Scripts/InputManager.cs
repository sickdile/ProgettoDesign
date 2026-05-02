using NUnit.Framework;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.ARFoundation;
using UnityEngine.XR.ARSubsystems;
using System.Collections.Generic;
using UnityEngine.UI;
using DG.Tweening;
using UnityEngine.InputSystem.Interactions;

public class InputManager : MonoBehaviour
{
    ARRaycastManager raycastManager;
    List<ARRaycastHit> hits = new List<ARRaycastHit>();
    [SerializeField] SO_Events refTo_SO_Events;
    [SerializeField] SO_Data refTo_SO_Data;

    [SerializeField] LayerMask whatIsObject;

    [SerializeField] UiUtilities uiUtilities;
    Image roundUI;

    private void Start()
    {
        raycastManager = GetComponentInParent<ARRaycastManager>();
        roundUI = uiUtilities.roundUI;
    }

    public void OnTapInput(InputAction.CallbackContext ctx)
    {
        Debug.Log("TapInput!");
        if (ctx.started)
        {
            Vector2 screenPos = ctx.ReadValue<Vector2>();
            if (raycastManager.Raycast(screenPos, hits, TrackableType.PlaneWithinPolygon))
            {
                Pose hitPose = hits[0].pose;
                refTo_SO_Events.evt_placeObject.Invoke(hitPose);
            }
        }
    }
    public void OnRemoveInput(InputAction.CallbackContext ctx)
    {
        float holdTime = (ctx.interaction is HoldInteraction hold) ? hold.duration : 1f;
        Vector2 screenPos = ctx.ReadValue<Vector2>();
        if (screenPos == Vector2.zero && Pointer.current != null) screenPos = Pointer.current.position.ReadValue();
        Ray ray = Camera.main.ScreenPointToRay(screenPos);

        if (ctx.started)
        {
            if (Physics.Raycast(ray, out _, Mathf.Infinity, whatIsObject))
            {
                roundUI.gameObject.SetActive(true);
                roundUI.DOKill();
                roundUI.fillAmount = 0;
                roundUI.DOFillAmount(1, holdTime).SetEase(Ease.Linear);
            }
        }

        if (ctx.performed)
        {
            if (Physics.Raycast(ray, out _, Mathf.Infinity, whatIsObject))
            {
                refTo_SO_Events.evt_removeObject.Invoke();
            }

            roundUI.DOKill();
            roundUI.DOFillAmount(0, 0.1f).OnComplete(() => roundUI.gameObject.SetActive(false));
        }

        if (ctx.canceled)
        {
            roundUI.DOKill();
            roundUI.DOFillAmount(0, 0.2f).OnComplete(() => roundUI.gameObject.SetActive(false));
        }
    }
}

