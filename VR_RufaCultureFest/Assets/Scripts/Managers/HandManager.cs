using UnityEngine;

using UnityEngine.InputSystem;


public class HandManager : MonoBehaviour
{
    public InputActionProperty triggerInput;
    public InputActionProperty gripInput;

    Animator myAnimator;

    private void Start()
    {
        myAnimator = GetComponent<Animator>();
    }
    private void Update()
    {
        float trigger = triggerInput.action.ReadValue<float>();
        float grip = gripInput.action.ReadValue<float>();
        
        myAnimator.SetFloat("Grip", grip);
        myAnimator.SetFloat("Trigger", trigger);
    }
}
