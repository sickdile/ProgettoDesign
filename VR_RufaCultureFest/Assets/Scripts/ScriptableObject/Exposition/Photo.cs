using UnityEngine;
using VInspector;

namespace ScriptableObject.Exposition
{
    [CreateAssetMenu(fileName = "Photo", menuName = "Exposition/Photo")]
    public class Photo : UnityEngine.ScriptableObject
    {
        [Tab("Visual")]
        [Header("Photo Asset")]
        [SerializeField] private Sprite photoImage;
        [Space(20)]
        [SerializeField] private string photoName;
        [TextArea(10, 20)]
        [SerializeField] private string photoDescription;
        
        [Tab("Info")]
        [Header("Photo Information")]
        [SerializeField] private string photoAuthor;
        [SerializeField] private string photoDimension;

        public Sprite PhotoImage => photoImage;
        public string PhotoName => photoName;
        public string PhotoDescription => photoDescription;
        public string PhotoAuthor => photoAuthor;
        public string PhotoDimension => photoDimension;
    }
}
