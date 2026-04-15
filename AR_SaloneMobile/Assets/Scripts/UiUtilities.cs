using UnityEngine;

public class UiUtilities : MonoBehaviour
{
    [SerializeField] SO_Data refTo_SO_Data;
    public void Button_SetCurrentIndex(int _index)
    {
        refTo_SO_Data.SetIndex(_index);
    }
}
