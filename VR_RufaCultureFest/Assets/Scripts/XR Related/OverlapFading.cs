using UnityEngine;

namespace XR_Related
{
    public class OverlapFading : MonoBehaviour
    {
        [SerializeField] Transform cameraHead;
        [SerializeField] float sphereRadius = 0.3f;
        [SerializeField] float fadeEndDistance = 0.05f;
        [SerializeField] LayerMask layerMask;
        [SerializeField] int frameSkip = 3;
        [SerializeField] CanvasGroup canvasGroup;

        private readonly Collider[] colliderBuffer = new Collider[8];
        private int frameCounter;
        private float cachedAlpha = -1f;

        void Update()
        {
            if (frameCounter++ % frameSkip != 0)
                return;

            var _newAlpha = ComputeTargetAlpha();

            if (Mathf.Approximately(_newAlpha, cachedAlpha))
                return;

            cachedAlpha = _newAlpha;
            canvasGroup.alpha = cachedAlpha;
        }

        float ComputeTargetAlpha()
        {
            int _count = Physics.OverlapSphereNonAlloc(
                cameraHead.position, sphereRadius, colliderBuffer, layerMask);

            if (_count == 0)
                return 0f;

            var _closestDistance = float.MaxValue;

            for (var _i = 0; _i < _count; _i++)
            {
                var _closestPoint = colliderBuffer[_i].ClosestPoint(cameraHead.position);
                var _distance = Vector3.Distance(_closestPoint, cameraHead.position);
                _closestDistance = Mathf.Min(_closestDistance, _distance);
            }

            return Mathf.InverseLerp(sphereRadius, fadeEndDistance, _closestDistance);
        }
    }
}