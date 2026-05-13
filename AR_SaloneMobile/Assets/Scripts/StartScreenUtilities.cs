using UnityEngine;

public class StartScreenUtilities : MonoBehaviour
{

    [SerializeField] private UiUtilities uiUtil;

    public void CallHintAppears()
    {
        uiUtil.HintAppears_Comparire();
        GetComponent<Animator>().enabled = false;
        Destroy(gameObject);
    }
}
