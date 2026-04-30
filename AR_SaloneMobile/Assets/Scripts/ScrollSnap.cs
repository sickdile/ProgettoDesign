using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ScrollSnap : MonoBehaviour
{
    [SerializeField] ScrollRect scrollRect;
    [SerializeField] RectTransform contentPanel;
    [SerializeField] RectTransform sampleListItem;

    [SerializeField] HorizontalLayoutGroup HLG;

    [SerializeField] TMP_Text nameLabelField;
    [SerializeField] SO_Data refTo_SO_Data;
    [SerializeField] SO_Events refTo_SO_events;

    float rectWidth;
    float hlgSpacing;

    bool hasSnapped = true;
    [SerializeField] float snapSpeed = 0.0f;
    [SerializeField] float snapForce = 1f;

    int currentItem = 0;
    private void Start()
    {
        rectWidth = sampleListItem.rect.width;
        hlgSpacing = HLG.spacing;
        nameLabelField.text = refTo_SO_Data.objNames[refTo_SO_Data.currentObjIndex];

    }

    private void Update()
    {
         currentItem = Mathf.RoundToInt(

            (Mathf.Abs(contentPanel.position.x)) /
            (rectWidth + hlgSpacing)
            );

        if (scrollRect.velocity.magnitude < 100 &&
            !hasSnapped)
        {
            scrollRect.velocity = Vector3.zero;
            snapSpeed += snapForce * Time.deltaTime;

            contentPanel.position = new Vector3(
                Mathf.MoveTowards(contentPanel.position.x,

                    0 - (currentItem * (rectWidth + hlgSpacing)), snapSpeed),
                contentPanel.position.y,
                contentPanel.position.z
                );

            if (Mathf.Abs(contentPanel.position.x + (currentItem * (rectWidth + hlgSpacing))) < 0.01f)
            {
                snapSpeed = 0;

                hasSnapped = true;
                refTo_SO_events.evt_newObjectSelected.Invoke(currentItem);
                nameLabelField.text = refTo_SO_Data.objNames[refTo_SO_Data.currentObjIndex];
            }
        }

        if (scrollRect.velocity.magnitude > 100)
        {
            hasSnapped = false;
            snapSpeed = 0;
        }
    }
}
