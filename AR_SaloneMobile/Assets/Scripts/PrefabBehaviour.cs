using UnityEngine;

public class PrefabBehaviour : MonoBehaviour
{
    [SerializeField] private SO_Events refTo_SO_Events;

    private void OnEnable()
    {
        refTo_SO_Events.evt_removeObject.AddListener(SelfDestroy);
    }

    private void OnDestroy()
    {
        refTo_SO_Events.evt_removeObject.RemoveAllListeners();
    }

    void SelfDestroy()
    {
        Destroy(gameObject);
    }
}
