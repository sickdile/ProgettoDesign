using UnityEngine;
using UnityEditor;
using System.IO;

namespace ScriptableObject.Exposition.Editor
{
    public class PhotoAssetLinker : EditorWindow
    {
        private string photosFolder = "Assets/Photos/Exposition_01";
        private string assetsFolder = "Assets/ScriptableObject/Exposition/Exposition_01";

        [MenuItem("Tools/Exposition/Link Photo Sprites")]
        public static void OpenWindow()
        {
            PhotoAssetLinker window = GetWindow<PhotoAssetLinker>("Photo Asset Linker");
            window.minSize = new Vector2(500, 180);
            window.Show();
        }

        private void OnGUI()
        {
            GUILayout.Space(10);
            GUILayout.Label("Photo Asset Linker", EditorStyles.boldLabel);
            GUILayout.Space(10);

            // Photos folder row
            GUILayout.BeginHorizontal();
            GUILayout.Label("Photos Folder", GUILayout.Width(120));
            photosFolder = GUILayout.TextField(photosFolder);
            if (GUILayout.Button("Browse", GUILayout.Width(60)))
            {
                string selected = EditorUtility.OpenFolderPanel("Select Photos Folder", "Assets", "");
                if (!string.IsNullOrEmpty(selected))
                    photosFolder = ConvertToRelativePath(selected);
            }
            GUILayout.EndHorizontal();

            GUILayout.Space(6);

            // ScriptableObjects folder row
            GUILayout.BeginHorizontal();
            GUILayout.Label("ScriptableObjects Folder", GUILayout.Width(120));
            assetsFolder = GUILayout.TextField(assetsFolder);
            if (GUILayout.Button("Browse", GUILayout.Width(60)))
            {
                string selected = EditorUtility.OpenFolderPanel("Select ScriptableObjects Folder", "Assets", "");
                if (!string.IsNullOrEmpty(selected))
                    assetsFolder = ConvertToRelativePath(selected);
            }
            GUILayout.EndHorizontal();

            GUILayout.Space(20);

            // Run button
            GUI.backgroundColor = new Color(0.4f, 0.8f, 0.4f);
            if (GUILayout.Button("Link Sprites", GUILayout.Height(35)))
                LinkSprites();
            GUI.backgroundColor = Color.white;
        }

        private void LinkSprites()
        {
            if (!Directory.Exists(photosFolder))
            {
                EditorUtility.DisplayDialog("Errore", $"Photos folder non trovata:\n{photosFolder}", "OK");
                return;
            }

            if (!Directory.Exists(assetsFolder))
            {
                EditorUtility.DisplayDialog("Errore", $"ScriptableObjects folder non trovata:\n{assetsFolder}", "OK");
                return;
            }

            // First pass: set all images to Sprite (Single mode)
            SetAllTexturesAsSprite();

            string[] assetGuids = AssetDatabase.FindAssets("t:Photo", new[] { assetsFolder });

            if (assetGuids.Length == 0)
            {
                Debug.LogWarning("[PhotoAssetLinker] No Photo ScriptableObjects found in: " + assetsFolder);
                EditorUtility.DisplayDialog("Attenzione", "Nessun Photo ScriptableObject trovato nella cartella specificata.", "OK");
                return;
            }

            int linked  = 0;
            int missing = 0;

            foreach (string guid in assetGuids)
            {
                string assetPath = AssetDatabase.GUIDToAssetPath(guid);
                Photo photo = AssetDatabase.LoadAssetAtPath<Photo>(assetPath);

                if (photo == null)
                {
                    Debug.LogWarning("[PhotoAssetLinker] Could not load asset at: " + assetPath);
                    continue;
                }

                string spritePath = FindSpritePath(photo.name);

                if (spritePath == null)
                {
                    Debug.LogWarning($"[PhotoAssetLinker] Sprite not found for: {photo.name}");
                    missing++;
                    continue;
                }

                Sprite sprite = AssetDatabase.LoadAssetAtPath<Sprite>(spritePath);

                if (sprite == null)
                {
                    Debug.LogWarning($"[PhotoAssetLinker] Could not load sprite at: {spritePath}");
                    missing++;
                    continue;
                }

                SerializedObject   serialized = new SerializedObject(photo);
                SerializedProperty imageProp  = serialized.FindProperty("photoImage");

                imageProp.objectReferenceValue = sprite;
                serialized.ApplyModifiedProperties();
                EditorUtility.SetDirty(photo);

                Debug.Log($"[PhotoAssetLinker] Linked: {photo.name}  ->  {spritePath}");
                linked++;
            }

            AssetDatabase.SaveAssets();
            AssetDatabase.Refresh();

            Debug.Log($"[PhotoAssetLinker] Done. Linked: {linked}  |  Missing: {missing}  |  Total: {assetGuids.Length}");
            EditorUtility.DisplayDialog(
                "Photo Asset Linker",
                $"Completato!\n\nCollegati: {linked}\nMancanti: {missing}\nTotale: {assetGuids.Length}",
                "OK"
            );
        }

        // Sets all textures in the photos folder to Sprite (Single) type
        private void SetAllTexturesAsSprite()
        {
            string[] extensions = { "*.png", "*.jpg", "*.jpeg", "*.tga", "*.psd", "*.tiff" };

            foreach (string ext in extensions)
            {
                string[] files = Directory.GetFiles(photosFolder, ext);

                foreach (string file in files)
                {
                    string path = file.Replace("\\", "/");
                    TextureImporter importer = AssetImporter.GetAtPath(path) as TextureImporter;

                    if (importer == null) continue;

                    bool needsReimport = false;

                    if (importer.textureType != TextureImporterType.Sprite)
                    {
                        importer.textureType = TextureImporterType.Sprite;
                        needsReimport = true;
                    }

                    if (importer.spriteImportMode != SpriteImportMode.Single)
                    {
                        importer.spriteImportMode = SpriteImportMode.Single;
                        needsReimport = true;
                    }

                    if (needsReimport)
                    {
                        AssetDatabase.ImportAsset(path, ImportAssetOptions.ForceUpdate);
                        Debug.Log($"[PhotoAssetLinker] Fixed texture settings: {path}");
                    }
                }
            }

            AssetDatabase.Refresh();
        }

        // Searches for the sprite file matching the asset name, regardless of extension
        private string FindSpritePath(string assetName)
        {
            string[] extensions = { ".png", ".jpg", ".jpeg", ".tga", ".psd", ".tiff" };

            foreach (string ext in extensions)
            {
                string candidate = Path.Combine(photosFolder, assetName + ext).Replace("\\", "/");
                if (File.Exists(candidate))
                    return candidate;
            }

            return null;
        }

        // Converts an absolute path to a relative Unity path (Assets/...)
        private static string ConvertToRelativePath(string absolutePath)
        {
            string projectPath = Application.dataPath.Replace("/Assets", "");
            if (absolutePath.StartsWith(projectPath))
                return absolutePath.Substring(projectPath.Length + 1).Replace("\\", "/");
            return absolutePath;
        }
    }
}
