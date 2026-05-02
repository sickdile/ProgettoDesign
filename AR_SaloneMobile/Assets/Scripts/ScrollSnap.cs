using System;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public abstract class ScrollSnap : MonoBehaviour
{
    public ScrollRect scrollRect;
    public RectTransform contentPanel;
    [SerializeField] RectTransform sampleListItem;

    [SerializeField] HorizontalLayoutGroup HLG;

    public SO_Events refTo_SO_events;

    float rectWidth;
    float hlgSpacing;

    bool hasSnapped = true;
    [SerializeField] float snapSpeed = 0.0f;
    [SerializeField] float snapForce = 1f;

    [NonSerialized] public int currentItem = 0;
    private void Start()
    {
        rectWidth = sampleListItem.rect.width;
        hlgSpacing = HLG.spacing;
        UpdateData();
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
                UpdateData();
            }
        }

        if (scrollRect.velocity.magnitude > 100)
        {
            hasSnapped = false;
            snapSpeed = 0;
        }
    }

    public abstract void UpdateData();
}
