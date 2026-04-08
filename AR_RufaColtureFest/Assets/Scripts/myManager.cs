using TMPro;
using UnityEngine;
using UnityEngine.XR.ARFoundation;
using UnityEngine.XR.ARSubsystems;

public class myManager : MonoBehaviour
{

    [SerializeField]
    ARTrackedImageManager m_ImageManager;
    [SerializeField]
    ARAnchorManager m_AnchorManager;
    [SerializeField] GameObject[] Anchors;

    [SerializeField] GameObject anchorPos;

    Transform[] checkpoints = new Transform[2];

    [SerializeField] TextMeshProUGUI debug;

    void OnEnable()
    {
        m_ImageManager.trackablesChanged.AddListener(OnChanged);
        m_AnchorManager.trackablesChanged.AddListener(OnAnchorChanged);
    }

    void OnDisable()
    {
        m_ImageManager.trackablesChanged.RemoveListener(OnChanged);
        m_AnchorManager.trackablesChanged.RemoveListener(OnAnchorChanged);
    }

    bool hasInstantiated;

    void OnAnchorChanged(ARTrackablesChangedEventArgs<ARAnchor> eventArgs)
    {
        foreach (var anchor in eventArgs.updated)
        {
            string text = "ID: " + anchor.trackableId.ToString() + " Sub1: " + anchor.trackableId.subId1.ToString() + " Sub2: " + anchor.trackableId.subId2.ToString();
            debug.SetText(text);
        }
    }

    void OnChanged(ARTrackablesChangedEventArgs<ARTrackedImage> eventArgs)
    {
        foreach (var newImage in eventArgs.added)
        {
            Debug.Log("New image detected!");
            if (newImage.referenceImage.name == "MKR_0" && !hasInstantiated)
            {
                Instantiate(anchorPos, newImage.transform);
                hasInstantiated = true;
            }
            else if (newImage.referenceImage.name == "MKR_1" && !hasInstantiated)
            {
                Instantiate(anchorPos, newImage.transform);
                hasInstantiated = true;
            }
        }

        foreach (var updatedImage in eventArgs.updated)
        {
            // Handle updated event
        }

        foreach (var removed in eventArgs.removed)
        {
            // Handle removed event
            TrackableId removedImageTrackableId = removed.Key;
            ARTrackedImage removedImage = removed.Value;
        }
    }


}
