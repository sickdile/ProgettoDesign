using UnityEngine;

public class ScrollInfo : ScrollSnap
{
    [SerializeField] int lastIndex;
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
}
