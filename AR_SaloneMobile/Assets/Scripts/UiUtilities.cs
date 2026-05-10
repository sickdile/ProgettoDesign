using DG.Tweening;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class UiUtilities : MonoBehaviour
{
    [SerializeField] MyARManager m_Manager;
    [SerializeField] SO_Data refTo_SO_Data;
    [SerializeField] SO_Events refTo_SO_Events;

    [SerializeField] Button buttonEsploso3D;
    [SerializeField] Button buttonDescription;

    [SerializeField] CanvasGroup presetsCanvasGroup;

    [SerializeField] CanvasGroup allSlidersCanvasGroup;

    [SerializeField] CanvasGroup descriptionCanvasGroup;

    public Image roundUI;

    [SerializeField] TextMeshProUGUI hintText;
    [SerializeField] float hintScreenDuration = 1;

    [SerializeField] string hint_perComparire;
    [SerializeField] string hint_perScomparire;
    private void OnEnable()
    {
        refTo_SO_Events.evt_UIChange.AddListener(ChangeUI);
    }

    private void OnDisable()
    {
        refTo_SO_Events.evt_UIChange.RemoveAllListeners();
    }

    private void Start()
    {
        HintAppears(hint_perComparire);
        Debug.Log("Check su allNames: " + refTo_SO_Data.allNames[1][2]);
    }

    public void HintDisappears()
    {
        hintText.DOFade(0, 1);
    }

    public void HintAppears(string _text)
    {
        hintText.SetText(_text);
        hintText.DOFade(1, 0.5f);
        Invoke(nameof(HintDisappears), hintScreenDuration);
    }
    public void HintAppears()
    {
        hintText.SetText(hint_perComparire);
        hintText.DOFade(1, 0.5f);
        Invoke(nameof(HintDisappears), hintScreenDuration);
    }

    public void Button_SetCurrentIndex(int _index)
    {
        refTo_SO_Data.SetIndex(_index);
    }


    public void ChangeUI()
    {
        presetsCanvasGroup.DOFade(m_Manager.currentObjectInstantiated == null ? 0 : 1, 0.5f);

        if (m_Manager.currentObjectInstantiated == null)
        {
            buttonEsploso3D.interactable = false;
            buttonDescription.interactable = false;
            HintAppears();
            return;
        }

        HintAppears(hint_perScomparire);
        if (m_Manager.currentObjectInstantiated.GetComponent<PrefabBehaviour>().CanExplode) buttonEsploso3D.interactable = true;
        else buttonEsploso3D.interactable = false;
        buttonDescription.interactable = true;

    }


    public void Button_3DExploded()
    {
        refTo_SO_Events.evt_esploso.Invoke();
    }

    bool isDescription = false;
    public void Button_Description()
    {
        descriptionCanvasGroup.GetComponentInChildren<TextMeshProUGUI>().SetText(refTo_SO_Data.descriptions[refTo_SO_Data.currentObjIndex]);
        descriptionCanvasGroup.GetComponentsInChildren<Image>()[1].sprite = refTo_SO_Data.projectPlans[refTo_SO_Data.currentObjIndex];
        isDescription = !isDescription;
        descriptionCanvasGroup.DOFade(isDescription ? 1 : 0, 0.3f);
        descriptionCanvasGroup.blocksRaycasts = !descriptionCanvasGroup.blocksRaycasts;
        allSlidersCanvasGroup.DOFade(isDescription ? .025f : 1, 0.3f);
        refTo_SO_Events.evt_description.Invoke();
    }

}
