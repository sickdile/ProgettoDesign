using DG.Tweening;
using TMPro;
using UnityEngine;

public class Scroll_Object : ScrollSnap
{
    [SerializeField] TMP_Text nameLabelField;
    [SerializeField] TMP_Text descLabelField;
    [SerializeField] TMP_Text miniField;

    [SerializeField] SO_Data refTo_SO_Data;
    CanvasGroup myCanvasGroup;

    bool isObjectInScene = false;

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
        descLabelField.text = refTo_SO_Data.allNames[refTo_SO_Data.currentObjIndex][0];
        miniField.SetText(nameLabelField.text.Split(" -")[0]);

    }

    public override int GetIndex()
    {
        if (isObjectInScene) return refTo_SO_Data.currentObjIndex;

        return Mathf.RoundToInt(
           (Mathf.Abs(contentPanel.position.x)) /
           (rectWidth + hlgSpacing)
           );
    }

    public void DisableScroll(Pose _pose)
    {
        isObjectInScene = true;
        //scrollRect.enabled = false;
        myCanvasGroup.DOFade(0.5f, 0.5f);
    }

    public void EnableScroll()
    {
        isObjectInScene = false;
        //scrollRect.enabled = true;
        myCanvasGroup.DOFade(1, 0.5f);
    }

    public override void ResetScrolling()
    {
        if (scrollRect.velocity.magnitude > 100)
        {
            hasSnapped = false;
            snapSpeed = 0;        
            if (isObjectInScene) refTo_SO_events.evt_requestHint.Invoke();

        }
    }
}
