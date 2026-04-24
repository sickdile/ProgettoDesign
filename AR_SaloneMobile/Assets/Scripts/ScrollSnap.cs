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

    bool hasSnapped = false;
    [SerializeField] float snapSpeed = 0.0f;
    [SerializeField] float snapForce = 1f;


    private void Start()
    {
        rectWidth = sampleListItem.rect.width;
        hlgSpacing = HLG.spacing;
    }

    private void Update()
    {
        int currentItem = Mathf.RoundToInt((0 - contentPanel.localPosition.x - rectWidth * .5f) / (rectWidth + hlgSpacing));
        // Debug.Log($"Current item is {currentItem}; Current velocity is {scrollRect.velocity.magnitude}; value of that fker is {currentItem * (rectWidth + hlgSpacing)}");

        if (scrollRect.velocity.magnitude < 200 && !hasSnapped)
        {
            scrollRect.velocity = Vector3.zero;
            snapSpeed += snapForce * Time.deltaTime;
            Debug.Log("SNAPPING!");
            contentPanel.localPosition = new Vector3(
                Mathf.MoveTowards(contentPanel.localPosition.x,

                    0 - (currentItem * (rectWidth + hlgSpacing)) - rectWidth * .5f, snapSpeed),
                contentPanel.localPosition.y,
                contentPanel.localPosition.z
                );
            if (Mathf.Abs( contentPanel.localPosition.x + rectWidth * .5f+(currentItem * (rectWidth + hlgSpacing))) < 0.001f )
            {
                snapSpeed = 0;

                hasSnapped = true;
                refTo_SO_events.evt_newObjectSelected.Invoke(currentItem - 1);
            }
        }
        if (scrollRect.velocity.magnitude > 200)
        {
            hasSnapped = false;
            snapSpeed = 0;
        }
    }
}
