using UnityEngine;
using UnityEngine.Events;
using Object = UnityEngine.Object;

public abstract class ObjectDispatcher : MonoBehaviour
{
    [SerializeField]
    ThreadDelivery threadCall;

    public ReferenceHandler refHandler;


    public Object objectToSend;


    void OnEnable()
    {
        threadCall.ev_getReference?.AddListener(SetReference);
    }

    void OnDisable()
    {
        threadCall.ev_getReference.RemoveListener(SetReference);
    }

    public abstract void SetReference();
}
