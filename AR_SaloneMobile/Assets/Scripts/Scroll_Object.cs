using TMPro;
using UnityEngine;

public class Scroll_Object : ScrollSnap
{
    [SerializeField] TMP_Text nameLabelField;
    [SerializeField] SO_Data refTo_SO_Data;

    public override void UpdateData()
    {
        nameLabelField.text = refTo_SO_Data.objNames[refTo_SO_Data.currentObjIndex];
        refTo_SO_events.evt_newObjectSelected.Invoke(currentItem);

    }
}
