using DG.Tweening;
using UnityEngine;
using UnityEngine.UI;

public class UiUtilities : MonoBehaviour
{
    [SerializeField] MyARManager m_Manager;
    [SerializeField] SO_Data refTo_SO_Data;
    [SerializeField] SO_Events refTo_SO_Events;

    [SerializeField] Button buttonEsploso3D;

    [SerializeField] CanvasGroup presetsCanvasGroup;

    private void OnEnable()
    {
        refTo_SO_Events.evt_UIChange.AddListener(ChangeUI);
    }

    private void OnDisable()
    {
        refTo_SO_Events.evt_UIChange.RemoveAllListeners();
    }

    public void Button_SetCurrentIndex(int _index)
    {
        refTo_SO_Data.SetIndex(_index);
    }

    public void ChangeUI()
    {
        presetsCanvasGroup.DOFade(presetsCanvasGroup.alpha == 1.0f ? 0 : 1, 0.5f);
        if (m_Manager.currentObjectInstantiated == null)
        {
            buttonEsploso3D.interactable = false;
            return;
        }

        if (m_Manager.currentObjectInstantiated.GetComponent<PrefabBehaviour>().CanExplode) buttonEsploso3D.interactable = true;
        else buttonEsploso3D.interactable = false;
    }

    public void Button_RemoveObject()
    {
        refTo_SO_Events.evt_removeObject.Invoke();
        ChangeUI();
    }

    public void Button_3DExploded()
    {
        refTo_SO_Events.evt_esploso.Invoke();
    }
}
