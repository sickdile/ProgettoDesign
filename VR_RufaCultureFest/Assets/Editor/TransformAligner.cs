using UnityEditor;
using UnityEngine;

namespace EditorUtilities
{
    public class TransformAligner : Editor
    {
        // Aggiunge la voce nel menu Tools
        [MenuItem("Tools/Allinea Transform (2° al 1°)")]
        public static void AlignToFirstSelected()
        {
            // Verifichiamo che ci siano esattamente due oggetti selezionati
            if (Selection.gameObjects.Length != 2)
            {
                Debug.LogWarning("Devi selezionare esattamente due oggetti nella Hierarchy o nella Scena.");
                return;
            }

            // In Unity, Selection.activeGameObject è l'ULTIMO oggetto che hai cliccato (il secondo)
            GameObject objectToMove = Selection.activeGameObject;
            GameObject targetObject = null;

            // Troviamo il primo oggetto cliccato (quello di riferimento) escludendo quello attivo
            foreach (GameObject go in Selection.gameObjects)
            {
                if (go != objectToMove)
                {
                    targetObject = go;
                    break;
                }
            }

            if (objectToMove == null || targetObject == null) return;

            // Registriamo l'operazione per permettere il Ctrl+Z (Undo)
            Undo.RecordObject(objectToMove.transform, "Allinea Transform a World Space");

            // Allineamento a livello World (ignora i parent)
            objectToMove.transform.position = targetObject.transform.position;
            objectToMove.transform.rotation = targetObject.transform.rotation;
            
            // La scala non viene toccata, come richiesto

            Debug.Log($"<color=cyan>[Transform Aligner]</color> <b>{objectToMove.name}</b> allineato a <b>{targetObject.name}</b>.");
        }

        // Questo metodo rende il bottone cliccabile SOLO se hai esattamente 2 oggetti selezionati
        [MenuItem("Tools/Allinea Transform (2° al 1°)", true)]
        public static bool ValidateAlignToFirstSelected()
        {
            return Selection.gameObjects.Length == 2;
        }
    }
}