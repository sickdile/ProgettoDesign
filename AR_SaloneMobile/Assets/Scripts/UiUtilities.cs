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
    [SerializeField] CanvasGroup buttonsCanvasGroup;

    [SerializeField] CanvasGroup presetsCanvasGroup;

    [SerializeField] CanvasGroup allSlidersCanvasGroup;

    [SerializeField] CanvasGroup descriptionCanvasGroup;
    [SerializeField] CanvasGroup textsCanvasGroup;

    public Image roundUI;

    [SerializeField] TextMeshProUGUI hintText;
    [SerializeField] float hintScreenDuration = 1;

    [SerializeField] string hint_perComparire;
    [SerializeField] string hint_perScomparire;

    [SerializeField] CanvasGroup nomeDellaCosaCG;

    [SerializeField] TextMeshProUGUI nameLabelField;

    [SerializeField] RectTransform transform_Nome;
    [SerializeField] RectTransform transform_variante;


    private void OnEnable()
    {
        refTo_SO_Events.evt_UIChange.AddListener(ChangeUI);
        refTo_SO_Events.evt_requestHint.AddListener(HintAppears_Scomparire);
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
    public void HintAppears_Scomparire()
    {
        HintAppears(hint_perScomparire);
        hintText.DOKill();
        hintText.DOFade(1, 0.5f);
        Invoke(nameof(HintDisappears), hintScreenDuration);

    }

    public void HintAppears(string _text)
    {
        hintText.SetText(_text);
        hintText.DOFade(1, 0.5f);
        Invoke(nameof(HintDisappears), hintScreenDuration);
    }
    public void HintAppears_Comparire()
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

            buttonsCanvasGroup.interactable = false;
            buttonsCanvasGroup.DOFade(0, 0.3f);

            textsCanvasGroup.DOFade(0, .3f);
            HintAppears_Comparire();

            nomeDellaCosaCG.DOFade(1, .3f);

            return;
        }

        nomeDellaCosaCG.DOFade(0, .3f);

        buttonsCanvasGroup.interactable = true;
        buttonsCanvasGroup.DOFade(1, 0.3f);

        textsCanvasGroup.DOFade(1, 0.3f);


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
        transform_Nome.DOScale(isDescription ? 1.3f : 1, 0.4f);
        transform_variante.DOScale(isDescription ? 1.3f : 1, 0.4f);
       // transform_variante.DOLocalMoveY(isDescription ? -170 : -190, 0.4f);

        descriptionCanvasGroup.blocksRaycasts = !descriptionCanvasGroup.blocksRaycasts;
        allSlidersCanvasGroup.DOFade(isDescription ? .025f : 1, 0.3f);
        refTo_SO_Events.evt_description.Invoke();
    }

    public void SelectPreset(int _id)
    {
        refTo_SO_Events.evt_newPresetSelected.Invoke(_id);
        nameLabelField.text = refTo_SO_Data.allNames[refTo_SO_Data.currentObjIndex][_id];

    }

}
