using TMPro;
using UnityEngine;

public class TrackingInitializer : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI testDebug;
    void Update()
    {
        if (Vector3.Dot(Input.gyro.gravity, Vector3.up) < 0.5f) { testDebug.SetText("NO!"); }
        else testDebug.SetText("OK");
    }
}
