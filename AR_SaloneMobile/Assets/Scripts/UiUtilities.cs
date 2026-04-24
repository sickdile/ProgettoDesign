using UnityEngine;

public class UiUtilities : MonoBehaviour
{
    [SerializeField] SO_Data refTo_SO_Data;
    [SerializeField] SO_Events refTo_SO_Events;

    private void OnEnable()
    {
        refTo_SO_Events.evt_UIPressed.AddListener(ChangeUI);
    }

    private void OnDisable()
    {
        refTo_SO_Events.evt_UIPressed.RemoveAllListeners();
    }

    [SerializeField] Animator canvasAnimator;

    public void Button_SetCurrentIndex(int _index)
    {
        refTo_SO_Data.SetIndex(_index);
    }

    public void ChangeUI()
    {
        canvasAnimator.SetTrigger("ToggleUI");
    }

    public void Button_RemoveObject()
    {
        ChangeUI();
        refTo_SO_Events.evt_removeObject.Invoke(); 
    }
}
