using UnityEngine;
using UnityEngine.XR.ARFoundation;

public class LightAdapt : MonoBehaviour
{
    [SerializeField] private ARCameraManager arCameraManager;
    [SerializeField] private Light mainLight;

    void OnEnable() => arCameraManager.frameReceived += OnFrameReceived;
    void OnDisable() => arCameraManager.frameReceived -= OnFrameReceived;

    private void OnFrameReceived(ARCameraFrameEventArgs args)
    {
        if (args.lightEstimation.mainLightDirection.HasValue)
        {
            // Get the light direction
            Vector3 direction = args.lightEstimation.mainLightDirection.Value;
            Color color = args.lightEstimation.mainLightColor.Value;
            float intensity = args.lightEstimation.mainLightIntensityLumens.Value;

            // Apply it to the directional light
            mainLight.transform.rotation = Quaternion.LookRotation(direction);
            mainLight.color = color;
            mainLight.intensity = intensity;
        }
    }
}
