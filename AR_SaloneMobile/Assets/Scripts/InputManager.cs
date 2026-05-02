using NUnit.Framework;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.ARFoundation;
using UnityEngine.XR.ARSubsystems;
using System.Collections.Generic;
using UnityEngine.InputSystem.Interactions;

public class InputManager : MonoBehaviour
{
    ARRaycastManager raycastManager;
    List<ARRaycastHit> hits = new List<ARRaycastHit>();
    [SerializeField] SO_Events refTo_SO_Events;
    [SerializeField] SO_Data refTo_SO_Data;

    [SerializeField] LayerMask whatIsObject;
    private void Start()
    {
        raycastManager = GetComponentInParent<ARRaycastManager>();
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
        if (ctx.duration > 1 && ctx.performed)
        {
            //fin qui funziona
            
            Ray ray = Camera.main.ScreenPointToRay(ctx.ReadValue<Vector2>());

            if (Physics.Raycast(ray, out RaycastHit hit, Mathf.Infinity, whatIsObject))
            {
                Debug.Log($"Intercettato {hit.collider.name}");
                refTo_SO_Events.evt_removeObject.Invoke();
            }
        }
    }
}

