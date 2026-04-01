using UnityEngine;
using UnityEngine.XR.ARFoundation;
using UnityEngine.XR.ARSubsystems;

public class myManager : MonoBehaviour
{

    [SerializeField]
    ARTrackedImageManager m_ImageManager;
    [SerializeField] GameObject[] Anchors;

    [SerializeField] GameObject scenaDaVisualizzare;

    Transform[] checkpoints = new Transform[2];

    void OnEnable() => m_ImageManager.trackablesChanged.AddListener(OnChanged);

    void OnDisable() => m_ImageManager.trackablesChanged.RemoveListener(OnChanged);

    void OnChanged(ARTrackablesChangedEventArgs<ARTrackedImage> eventArgs)
    {
        foreach (var newImage in eventArgs.added)
        {
            Debug.Log("New image detected!");
            if (newImage.referenceImage.name == "MKR_0")
            {
                checkpoints[0] = Instantiate(Anchors[0], newImage.transform).transform;
                scenaDaVisualizzare.SetActive(true);
                scenaDaVisualizzare.transform.parent = checkpoints[0];
            }
            else if (newImage.referenceImage.name == "MKR_1")
            {
                checkpoints[1] = Instantiate(Anchors[1], newImage.transform).transform;
                scenaDaVisualizzare.transform.parent = checkpoints[1];

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
