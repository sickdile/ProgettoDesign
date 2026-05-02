using DG.Tweening;
using UnityEngine;

public class PrefabBehaviour : MonoBehaviour
{
    [SerializeField] private SO_Events refTo_SO_Events;

    [Header("Esploso 3D")]
    public bool CanExplode { get { return canExplode; } private set { canExplode = false; } }
    [Tooltip("Impostare True se il modello 3D ha un esploso.")]
    [SerializeField] private bool canExplode = false;
    bool hasExploded = false;

    [SerializeField] private GameObject[] pieces;
    private Vector3[] originalPositions;
    [SerializeField] private Transform[] explodedTargetTransforms;

    private void OnEnable()
    {
        refTo_SO_Events.evt_removeObject.AddListener(SelfDestroy);
       
        if (canExplode)
        {
            refTo_SO_Events.evt_esploso.AddListener(Do3DExplode);
            StoreOriginalPiecePositions();
        }
    }

    private void OnDestroy()
    {
        refTo_SO_Events.evt_removeObject.RemoveAllListeners();
    }


    void StoreOriginalPiecePositions()
    {
        originalPositions = new Vector3[pieces.Length];

        for (int i = 0; i < pieces.Length; i++)
        {
            originalPositions[i] = pieces[i].transform.position;
        }
    }
    void SelfDestroy()
    {
        Destroy(gameObject);
    }

    void Do3DExplode()
    {
        Vector3[] target = new Vector3[pieces.Length];

        for (int i = 0; i < pieces.Length; i++) {
            target[i] = hasExploded?(originalPositions[i]):(explodedTargetTransforms[i].position);
        }

        hasExploded = !hasExploded;

        for (int i = 0; i < pieces.Length; i++)
        {
            pieces[i].transform.DOMove(target[i], 1.0f);
        }
    }
}
