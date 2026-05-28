using System.Text.RegularExpressions;
using UnityEditor;
using UnityEngine;
using UI; // Assicurati di includere il namespace corretto dove risiede UIEspositore

namespace EditorUtilities
{
    public class UIEspositoreIndexUpdater : Editor
    {
        // Aggiunge la voce nel menu in alto di Unity
        [MenuItem("Tools/Aggiorna Indici Espositori Selezionati")]
        public static void UpdateExpositorIndexes()
        {
            // Recupera tutti i GameObject attualmente selezionati nell'Hierarchy
            GameObject[] selectedObjects = Selection.gameObjects;
            
            if (selectedObjects.Length == 0)
            {
                Debug.LogWarning("Nessun oggetto selezionato.");
                return;
            }

            int updatedCount = 0;

            foreach (GameObject go in selectedObjects)
            {
                // Cerca il componente UIEspositore
                UIEspositore espositore = go.GetComponent<UIEspositore>();
                
                if (espositore != null)
                {
                    // La regex \d+$ cerca una o più cifre alla fine esatta della stringa
                    Match match = Regex.Match(go.name, @"\d+$");
                    
                    if (match.Success)
                    {
                        // int.TryParse converte la stringa in intero rimuovendo automaticamente il padding degli zeri (es. "01" diventa 1)
                        if (int.TryParse(match.Value, out int parsedIndex))
                        {
                            // Utilizziamo SerializedObject per modificare la variabile privata serializzata
                            // Questo garantisce la compatibilità con il sistema di Undo e marca l'oggetto come dirty
                            SerializedObject serializedEspositore = new SerializedObject(espositore);
                            SerializedProperty indexProperty = serializedEspositore.FindProperty("expositorIndex");

                            if (indexProperty != null)
                            {
                                indexProperty.intValue = parsedIndex;
                                serializedEspositore.ApplyModifiedProperties();
                                updatedCount++;
                            }
                        }
                    }
                    else
                    {
                        Debug.LogWarning($"Impossibile trovare un numero valido alla fine del nome per l'oggetto: {go.name}", go);
                    }
                }
            }

            Debug.Log($"Aggiornamento completato. Indici modificati: {updatedCount}/{selectedObjects.Length}");
        }

        // Metodo opzionale per validare quando il tasto è cliccabile (solo se c'è una selezione)
        [MenuItem("Tools/Aggiorna Indici Espositori Selezionati", true)]
        public static bool ValidateUpdateExpositorIndexes()
        {
            return Selection.gameObjects.Length > 0;
        }
    }
}