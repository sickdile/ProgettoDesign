using System.IO;
using System.Text.RegularExpressions;
using UnityEditor;
using UnityEngine;
using BaseScriptable.Exposition;

public class PhotoCSVImporter : EditorWindow
{
    public TextAsset csvFile;
    public DefaultAsset spriteFolder;
    public string savePath = "Assets/ScriptableObjects/Photos";

    [MenuItem("Tools/Generatore ScriptableObject Foto da CSV")]
    public static void ShowWindow()
    {
        GetWindow<PhotoCSVImporter>("Importa Foto CSV");
    }

    void OnGUI()
    {
        GUILayout.Label("Importa Dati Esposizione da CSV", EditorStyles.boldLabel);

        csvFile = (TextAsset)EditorGUILayout.ObjectField("File CSV", csvFile, typeof(TextAsset), false);
        spriteFolder = (DefaultAsset)EditorGUILayout.ObjectField("Cartella Immagini (Opzionale)", spriteFolder, typeof(DefaultAsset), false);
        savePath = EditorGUILayout.TextField("Cartella di destinazione", savePath);

        if (GUILayout.Button("Genera Scriptable Objects"))
        {
            GenerateAssets();
        }
    }

    void GenerateAssets()
    {
        if (csvFile == null)
        {
            Debug.LogError("Inserisci un file CSV valido.");
            return;
        }

        string text = csvFile.text;
        string[] lines = text.Split(new[] { "\r\n", "\r", "\n" }, System.StringSplitOptions.RemoveEmptyEntries);

        if (lines.Length <= 1)
        {
            Debug.LogError("Il CSV sembra vuoto o contiene solo l'intestazione.");
            return;
        }

        if (!AssetDatabase.IsValidFolder(savePath))
        {
            string[] folders = savePath.Split('/');
            string currentPath = folders[0];
            for (int i = 1; i < folders.Length; i++)
            {
                if (!AssetDatabase.IsValidFolder(currentPath + "/" + folders[i]))
                {
                    AssetDatabase.CreateFolder(currentPath, folders[i]);
                }
                currentPath += "/" + folders[i];
            }
        }

        char delimiter = lines[0].Contains(";") ? ';' : ',';

        string regexPattern = delimiter == ';'
            ? @";(?=(?:[^""]*""[^""]*"")*[^""]*$)"
            : @",(?=(?:[^""]*""[^""]*"")*[^""]*$)";

        int createdCount = 0;

        for (int i = 1; i < lines.Length; i++)
        {
            string currentLine = lines[i];
            string[] data = Regex.Split(currentLine, regexPattern);

            for (int j = 0; j < data.Length; j++)
            {
                data[j] = data[j].Trim(' ', '"');
            }

            if (data.Length < 5)
            {
                Debug.LogWarning($"[Riga {i + 1} saltata] Trovate solo {data.Length} colonne su 5. Contenuto letto: {currentLine}");
                continue;
            }

            string nomeFoto = data[0];
            string nomeFile = data[1];
            string descrizione = data[2];
            string autore = data[3];
            string dimensione = data[4];

            Photo newPhotoSO = UnityEngine.ScriptableObject.CreateInstance<Photo>();
            SerializedObject serializedPhoto = new SerializedObject(newPhotoSO);

            serializedPhoto.FindProperty("photoName").stringValue = nomeFoto;
            serializedPhoto.FindProperty("photoDescription").stringValue = descrizione;
            serializedPhoto.FindProperty("photoAuthor").stringValue = autore;
            serializedPhoto.FindProperty("photoDimension").stringValue = dimensione;

            if (spriteFolder != null)
            {
                string folderPath = AssetDatabase.GetAssetPath(spriteFolder);
                string spritePath = $"{folderPath}/{nomeFile}.png";
                Sprite foundSprite = AssetDatabase.LoadAssetAtPath<Sprite>(spritePath);

                if (foundSprite == null)
                {
                    spritePath = $"{folderPath}/{nomeFile}.jpg";
                    foundSprite = AssetDatabase.LoadAssetAtPath<Sprite>(spritePath);
                }

                if (foundSprite != null)
                {
                    serializedPhoto.FindProperty("photoImage").objectReferenceValue = foundSprite;
                }
            }

            serializedPhoto.ApplyModifiedProperties();

            // Creazione del prefisso numerico formattato a 2 cifre (01, 02, ..., 10, 11)
            // Usiamo 'i' perché corrisponde esattamente all'ordine di riga dei dati
            string prefix = i.ToString("D2");
            string assetPath = $"{savePath}/{prefix}_{nomeFile}.asset";

            AssetDatabase.CreateAsset(newPhotoSO, assetPath);
            createdCount++;
        }

        AssetDatabase.SaveAssets();
        AssetDatabase.Refresh();

        if (createdCount > 0)
        {
            Debug.Log($"<color=green>Generazione completata! Creati {createdCount} Scriptable Object in {savePath}</color>");
        }
        else
        {
            Debug.LogError("Generazione fallita. Controlla i Warning gialli.");
        }
    }
}