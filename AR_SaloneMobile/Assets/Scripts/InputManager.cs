using NUnit.Framework;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.ARFoundation;
using UnityEngine.XR.ARSubsystems;
using System.Collections.Generic;

public class InputManager : MonoBehaviour
{
    ARRaycastManager raycastManager;
    List<ARRaycastHit> hits = new List<ARRaycastHit>();
    [SerializeField] SO_Events refTo_SO_Events;
    [SerializeField] SO_Data refTo_SO_Data;

    private void Start()
    {
        raycastManager = GetComponentInParent<ARRaycastManager>();
    }

    public void OnTapInput(InputAction.CallbackContext ctx)
    {
        if (ctx.started)
        {
            Debug.Log("Tap ricevuto!");
            Vector2 screenPos = ctx.ReadValue<Vector2>();

            Debug.Log("Cliccato su " + screenPos);
            if (raycastManager.Raycast(screenPos, hits, TrackableType.PlaneWithinPolygon))
            {
                Pose hitPose = hits[0].pose;
                Debug.Log("Inviato evento");

                refTo_SO_Events.evt_placeObject.Invoke(hitPose);
            }
        }
    }
}

