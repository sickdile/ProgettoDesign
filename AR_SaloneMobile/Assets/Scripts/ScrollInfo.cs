using DG.Tweening;
using UnityEngine;

public class ScrollInfo : ScrollSnap
{
    [SerializeField] int lastIndex;

    private void OnEnable()
    {
        refTo_SO_events.evt_tutorialRequested.AddListener(ResetPosition);
    }
    public override void ResetScrolling()
    {
        if (scrollRect.velocity.magnitude > 100)
        {
            hasSnapped = false;
            snapSpeed = 0;
        }
    }

    public override void UpdateData()
    {
        if (currentItem == lastIndex) refTo_SO_events.evt_tutorialEnded.Invoke();

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
}
