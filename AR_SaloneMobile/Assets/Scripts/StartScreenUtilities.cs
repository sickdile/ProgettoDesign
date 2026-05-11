using UnityEngine;

public class StartScreenUtilities : MonoBehaviour
{

    [SerializeField] private UiUtilities uiUtil;

    public void CallHintAppears()
    {
        uiUtil.HintAppears();
        GetComponent<Animator>().enabled = false;
        Destroy(gameObject);
    }
}
