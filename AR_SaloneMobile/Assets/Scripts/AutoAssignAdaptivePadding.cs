using UnityEngine;
using UnityEngine.UI;

public class AutoAssignAdaptivePadding : MonoBehaviour
{
    [SerializeField] HorizontalLayoutGroup HLG;
    [SerializeField] RectTransform sampleListItem;

    private void Start()
    {
        HLG = GetComponent<HorizontalLayoutGroup>();
        HLG.padding.left = Mathf.RoundToInt(.5f * (Screen.width - sampleListItem.rect.width));
        HLG.padding.right = HLG.padding.left;
    }
}
