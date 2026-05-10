using DG.Tweening;
using System.Linq;
using UnityEngine;

public class PrefabBehaviour : MonoBehaviour
{
    [SerializeField] private SO_Events refTo_SO_Events;

    [Header("Materiali")]
    [SerializeField] Material[] presets;

    [Header("Esploso 3D")]
    public bool CanExplode { get { return canExplode; } private set { canExplode = false; } }
    [Tooltip("Impostare True se il modello 3D ha un esploso.")]
    [SerializeField] private bool canExplode = false;
    bool hasExploded = false;

    [SerializeField] private GameObject[] pieces;
    private Vector3[] originalPositions;
    [SerializeField] private Transform[] explodedTargetTransforms;

    [SerializeField] GameObject[] ignoreChangeMaterial;

    private void OnEnable()
    {
        refTo_SO_Events.evt_removeObject.AddListener(SelfDestroy);
        refTo_SO_Events.evt_newPresetSelected.AddListener(ChangeMyMaterial);

        if (canExplode)
        {
            refTo_SO_Events.evt_esploso.AddListener(Do3DExplode);
            StoreOriginalPiecePositions();
        }
    }

    private void OnDestroy()
    {
        refTo_SO_Events.evt_removeObject.RemoveListener(SelfDestroy);
        refTo_SO_Events.evt_newPresetSelected.RemoveListener(ChangeMyMaterial);
        if(canExplode) refTo_SO_Events.evt_esploso.RemoveListener(Do3DExplode);
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
        hasExploded = false;
        Destroy(gameObject);
    }

    void Do3DExplode()
    {
        Vector3[] target = new Vector3[pieces.Length];

        for (int i = 0; i < pieces.Length; i++)
        {
            target[i] = hasExploded ? (originalPositions[i]) : (explodedTargetTransforms[i].position);
        }

        hasExploded = !hasExploded;

        for (int i = 0; i < pieces.Length; i++)
        {
            pieces[i].transform.DOMove(target[i], 1.0f);
        }
    }

    void ChangeMyMaterial(int _idMaterial)
    {
        foreach (MeshRenderer renderer in GetComponentsInChildren<Renderer>())
        {
            if (ignoreChangeMaterial.Contains(renderer.gameObject)) return;
            renderer.sharedMaterial = presets[_idMaterial];
        }
    }
}
