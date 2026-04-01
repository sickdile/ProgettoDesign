using UnityEngine;
using UnityEngine.XR.ARFoundation;
using UnityEngine.XR.ARSubsystems;

public class myManager : MonoBehaviour
{

    [SerializeField]
    ARTrackedImageManager m_ImageManager;
    [SerializeField] GameObject testPrefab_scene;

    void OnEnable() => m_ImageManager.trackablesChanged.AddListener(OnChanged);

    void OnDisable() => m_ImageManager.trackablesChanged.RemoveListener(OnChanged);

    void OnChanged(ARTrackablesChangedEventArgs<ARTrackedImage> eventArgs)
    {
        foreach (var newImage in eventArgs.added)
        {
            Debug.Log("New image detected!");
            Instantiate(testPrefab_scene, newImage.transform);
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
