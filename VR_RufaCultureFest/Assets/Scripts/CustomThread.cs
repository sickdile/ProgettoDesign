using UnityEngine;


[DefaultExecutionOrder(999)]
public class CustomThread : MonoBehaviour
{
    [SerializeField]
    ThreadDelivery myThread;

    private void Start()
    {
        myThread.ev_getReference?.Invoke();
        myThread.ev_referenceBinding?.Invoke();
    }
}