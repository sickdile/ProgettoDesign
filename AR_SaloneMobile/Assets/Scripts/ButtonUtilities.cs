using DG.Tweening;
using UnityEngine;
using UnityEngine.UI;

public class ButtonUtilities : MonoBehaviour
{

    Button meAsButton;
    [SerializeField] bool isDefaultActive = false;
    Image myGraphic;
    [SerializeField] int myIndex;
    [SerializeField] SO_Events refTo_SO_Events;
    private void OnEnable()
    {
        refTo_SO_Events.evt_newPresetSelected.AddListener(HandleButtonPressed);
        refTo_SO_Events.evt_newObjectSelected.AddListener(ResetInterface);
    }

    private void OnDisable()
    {
        refTo_SO_Events.evt_newPresetSelected.RemoveListener(HandleButtonPressed);
        refTo_SO_Events.evt_newObjectSelected.RemoveListener(ResetInterface);
    }
    private void Start()
    {
        meAsButton = GetComponent<Button>();
        myGraphic = meAsButton.gameObject.GetComponent<Image>();
        if (isDefaultActive) myGraphic.color = Color.grey;
    }

    void HandleButtonPressed(int index)
    {
        Debug.Log("Chiamata ricevuta da " + index);
        if (index == myIndex)
        {
            myGraphic.DOColor(Color.grey, 0.3f);
        }
        else myGraphic.DOColor(Color.white, 0.3f);
    }

    void ResetInterface(int i)
    {
        if (isDefaultActive) myGraphic.DOColor(Color.grey, 0.3f);
        else myGraphic.DOColor(Color.white, 0.3f);

    }
}
