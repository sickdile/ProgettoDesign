using UnityEngine;

public class Scroll_Preset : ScrollSnap
{
    public override void UpdateData()
    {
        refTo_SO_events.evt_newPresetSelected.Invoke(currentItem);

    }
}
