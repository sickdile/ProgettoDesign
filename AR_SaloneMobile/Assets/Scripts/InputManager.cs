using NUnit.Framework;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.ARFoundation;
using UnityEngine.XR.ARSubsystems;
using System.Collections.Generic;
using UnityEngine.UI;
using DG.Tweening;
using UnityEngine.InputSystem.Interactions;
using UnityEngine.EventSystems;

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


            if (IsPointerOverUIManual(screenPos))
            {
                return;
            }

            if (raycastManager.Raycast(screenPos, hits, TrackableType.PlaneWithinPolygon))
            {
                Pose hitPose = hits[0].pose;
                refTo_SO_Events.evt_placeObject.Invoke(hitPose);
            }
        }
    }

    bool cerchiettoStarted = false;
    public void OnRemoveInput(InputAction.CallbackContext ctx)
    {
        Vector2 screenPos = ctx.ReadValue<Vector2>();
        if (screenPos == Vector2.zero && Pointer.current != null) screenPos = Pointer.current.position.ReadValue();

        if (IsPointerOverUIManual(screenPos))
        {
            if(!cerchiettoStarted) return;
        }

        float holdTime = (ctx.interaction is HoldInteraction hold) ? hold.duration : 1f;
        Ray ray = Camera.main.ScreenPointToRay(screenPos);

        if (ctx.started)
        {
            if (Physics.Raycast(ray, out _, Mathf.Infinity, whatIsObject))
            {
                cerchiettoStarted=true;

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

                Debug.Log("Inviato evento");
            }

            roundUI.DOKill();
            roundUI.DOFillAmount(0, 0.1f).OnComplete(() => roundUI.gameObject.SetActive(false));
            cerchiettoStarted = false;
        }

        if (ctx.canceled)
        {
            roundUI.DOKill();
            roundUI.DOFillAmount(0, 0.2f).OnComplete(() => roundUI.gameObject.SetActive(false));
            cerchiettoStarted = false;

        }
    }

    private bool IsPointerOverUIManual(Vector2 screenPosition)
    {
        if (EventSystem.current == null) return false;

        PointerEventData eventData = new PointerEventData(EventSystem.current);
        eventData.position = screenPosition;

        List<RaycastResult> results = new List<RaycastResult>();
        EventSystem.current.RaycastAll(eventData, results);

        return results.Count > 0;
    }
}