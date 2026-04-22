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

    private void Update()
    {
        int currentItem = Mathf.RoundToInt(-contentPanel.localPosition.x / (sampleListItem.rect.width + HLG.spacing)-1);
        Debug.Log($"Current item is {currentItem}");

        if (scrollRect.velocity.magnitude < 100) {
            contentPanel.localPosition = new Vector3
                (-(currentItem+1)*(sampleListItem .rect.width + HLG.spacing),
                contentPanel.localPosition.y, contentPanel.localPosition.z);
        }
    }
}
