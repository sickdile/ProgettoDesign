using System;
using UnityEngine;

[CreateAssetMenu(fileName = "SO_Data", menuName = "Scriptable Objects/SO_Data")]
public class SO_Data : ScriptableObject
{
    public int currentObjIndex { get; private set; }
    public GameObject[] objPrefabs;

    private void OnEnable()
    {
        currentObjIndex = 0;
    }

    public void SetIndex(int _index)
    {
        currentObjIndex = _index;
    }
}
