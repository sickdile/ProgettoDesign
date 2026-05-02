using DG.Tweening;
using UnityEngine;

public class Scroll_Preset : ScrollSnap
{
    public override void UpdateData()
    {
        refTo_SO_events.evt_newPresetSelected.Invoke(currentItem);
    }

    private void OnEnable()
    {
        refTo_SO_events.evt_UIChange.AddListener(ResetPosition);
    }

    private void OnDisable()
    {
        refTo_SO_events.evt_UIChange.RemoveAllListeners();
    }

    void ResetPosition()
    {
        currentItem = 0;
        contentPanel.transform.DOMoveX(0, 1);
    }
}
