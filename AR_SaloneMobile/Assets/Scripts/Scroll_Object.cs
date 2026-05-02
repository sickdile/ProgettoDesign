using UnityEngine;

public class Scroll_Object : ScrollSnap
{
    public override void UpdateData()
    {
        nameLabelField.text = refTo_SO_Data.objNames[refTo_SO_Data.currentObjIndex];
        refTo_SO_events.evt_newObjectSelected.Invoke(currentItem);
        nameLabelField.text = refTo_SO_Data.objNames[refTo_SO_Data.currentObjIndex];

    }
}
