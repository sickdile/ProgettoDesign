using System;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "SO_Data", menuName = "Scriptable Objects/SO_Data")]
public class SO_Data : ScriptableObject
{
    public int currentObjIndex { get; private set; }

    [Header("Reference prefab")]
    public GameObject[] objPrefabs;

    [Header("Nomi degli oggetti")]
    public string[] objNames;

    [Header("Nomi delle configurazioni")]
    public string[] config0_names;
    public string[] config1_names;
    public string[] config2_names;
    public string[] config3_names;
    public string[] config4_names;
    public string[] config5_names;
    public string[] config6_names;
    public string[] config7_names;

    [Header("Descrizioni")]
    [TextArea] public string[] descriptions;

    [Header("Project plans")]
    public Texture[] projectPlans;

    public string[][] allNames;

    private void OnEnable()
    {
        currentObjIndex = 0;
    }

    public void SetIndex(int _index)
    {
        currentObjIndex = _index;
    }
}
