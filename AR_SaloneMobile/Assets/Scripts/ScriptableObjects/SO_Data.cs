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
    public Sprite[] projectPlans;

    public string[][] allNames;

    private void OnEnable()
    {
        currentObjIndex = 0;
        
        allNames = new string[objNames.Length][];
        allNames[0] = config0_names;
        allNames[1] = config1_names;
        allNames[2] = config2_names;
        allNames[3] = config3_names;
        allNames[4] = config4_names;
        allNames[5] = config5_names;
        allNames[6] = config6_names;
        allNames[7] = config7_names;

    }

    public void SetIndex(int _index)
    {
        currentObjIndex = _index;
    }
}
