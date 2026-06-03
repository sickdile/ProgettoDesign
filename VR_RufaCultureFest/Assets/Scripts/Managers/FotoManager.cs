using UnityEngine;

public class FotoManager : MonoBehaviour
{

    [SerializeField]
    int numFoto;

    private void Start()
    {
        var _material = GetComponent<Renderer>().material;
        _material.SetInt("_Riga", Random.Range(1, numFoto));
        _material.SetInt("_Colonna", Random.Range(1, numFoto));
    }

}
