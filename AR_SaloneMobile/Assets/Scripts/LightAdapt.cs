using UnityEngine;
using UnityEngine.XR.ARFoundation;

public class LightAdapt : MonoBehaviour
{
    [SerializeField] private ARCameraManager arCameraManager;
    [SerializeField] private Light mainLight;

    void OnEnable() => arCameraManager.frameReceived += OnFrameReceived;
    void OnDisable() => arCameraManager.frameReceived -= OnFrameReceived;

//4500 6500
    private void OnFrameReceived(ARCameraFrameEventArgs args)
    {
        if (args.lightEstimation.mainLightDirection.HasValue)
        {
            // Get the light direction
            Vector3 direction = args.lightEstimation.mainLightDirection.Value;
            float temp = Mathf.Clamp(args.lightEstimation.averageColorTemperature.Value, 4500, 6500);
            float intensity = Mathf.Clamp(args.lightEstimation.mainLightIntensityLumens.Value, 0.8f, 1.2f) ;

            // Apply it to the directional light
            mainLight.transform.rotation = Quaternion.LookRotation(direction);
            mainLight.colorTemperature = temp;
            mainLight.intensity = intensity;
        }
    }
}
