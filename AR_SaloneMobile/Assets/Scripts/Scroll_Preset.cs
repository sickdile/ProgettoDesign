using DG.Tweening;
using TMPro;
using UnityEngine;

public class Scroll_Preset : ScrollSnap
{
    [SerializeField] TMP_Text nameLabelField;
    [SerializeField] SO_Data refTo_SO_Data;

    public override void UpdateData()
    {
        refTo_SO_events.evt_newPresetSelected.Invoke(currentItem);
        nameLabelField.text = refTo_SO_Data.allNames[refTo_SO_Data.currentObjIndex][currentItem];

    }

    private void OnEnable()
    {
        refTo_SO_events.evt_UIChange.AddListener(ResetPosition);
    }

    private void OnDisable()
    {
        refTo_SO_events.evt_UIChange.RemoveAllListeners();
    }
    public override int GetIndex()
    {
        return Mathf.RoundToInt(
           (Mathf.Abs(contentPanel.position.x)) /
           (rectWidth + hlgSpacing)
           );
    }

    void ResetPosition()
    {
        currentItem = 0;
        contentPanel.transform.DOMoveX(0, 1);
    }
    public override void ResetScrolling()
    {
        if (scrollRect.velocity.magnitude > 100)
        {
            hasSnapped = false;
            snapSpeed = 0;

        }
    }
}
