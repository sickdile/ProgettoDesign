using UnityEngine;

namespace BaseScriptable.Exposition
{
    [CreateAssetMenu(fileName = "Exposition", menuName = "Exposition/Exposition")]
    public class Exposition : UnityEngine.ScriptableObject
    {
        [Header("Exposition")]
        [SerializeField] string expositionName;
        public string ExpositionName => expositionName;
        
        [SerializeField] Photo[] photos;
        public Photo[] Photos => photos;
    }
}
