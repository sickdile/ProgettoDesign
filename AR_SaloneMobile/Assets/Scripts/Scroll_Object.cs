using DG.Tweening;
using TMPro;
using UnityEngine;

public class Scroll_Object : ScrollSnap
{
    [SerializeField] TMP_Text nameLabelField;
    [SerializeField] SO_Data refTo_SO_Data;
    CanvasGroup myCanvasGroup;
    private void OnEnable()
    {
        refTo_SO_events.evt_placeObject.AddListener(DisableScroll);
        refTo_SO_events.evt_removeObject.AddListener(EnableScroll);
        myCanvasGroup = GetComponent<CanvasGroup>();
    }
    public override void UpdateData()
    {
        refTo_SO_events.evt_newObjectSelected.Invoke(currentItem);
        nameLabelField.text = refTo_SO_Data.objNames[refTo_SO_Data.currentObjIndex];

    }

    public void DisableScroll(Pose _pose)
    {
        scrollRect.enabled = false;
        myCanvasGroup.DOFade(0.5f, 0.5f);
    }

    public void EnableScroll()
    {
        scrollRect.enabled = true;
        myCanvasGroup.DOFade(1, 0.5f);
    }
}
