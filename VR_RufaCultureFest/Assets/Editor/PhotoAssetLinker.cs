using UnityEngine;
using UnityEditor;
using System.IO;

namespace ScriptableObject.Exposition.Editor
{
    public class PhotoAssetLinker : EditorWindow
    {
        private const string PHOTOS_FOLDER = "Assets/Photos/Exposition_01";
        private const string ASSETS_FOLDER = "Assets/ScriptableObject/Exposition/Exposition_01";

        [MenuItem("Tools/Exposition/Link Photo Sprites")]
        public static void LinkSprites()
        {
            // First pass: make sure all images in the photos folder are set as Sprite
            SetAllTexturesAsSprite();

            string[] assetGuids = AssetDatabase.FindAssets("t:Photo", new[] { ASSETS_FOLDER });

            if (assetGuids.Length == 0)
            {
                Debug.LogWarning("[PhotoAssetLinker] No Photo ScriptableObjects found in: " + ASSETS_FOLDER);
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

        // Sets all textures in the photos folder to Sprite type
        private static void SetAllTexturesAsSprite()
        {
            string[] extensions = { "*.png", "*.jpg", "*.jpeg", "*.tga", "*.psd", "*.tiff" };

            foreach (string ext in extensions)
            {
                string[] files = Directory.GetFiles(PHOTOS_FOLDER, ext);

                foreach (string file in files)
                {
                    string path = file.Replace("\\", "/");
                    TextureImporter importer = AssetImporter.GetAtPath(path) as TextureImporter;

                    if (importer == null) continue;

                    if (importer.textureType != TextureImporterType.Sprite)
                    {
                        importer.textureType = TextureImporterType.Sprite;
                        AssetDatabase.ImportAsset(path, ImportAssetOptions.ForceUpdate);
                        Debug.Log($"[PhotoAssetLinker] Set as Sprite: {path}");
                    }
                }
            }

            AssetDatabase.Refresh();
        }

        // Searches for the sprite file matching the asset name, regardless of extension
        private static string FindSpritePath(string assetName)
        {
            string[] extensions = { ".png", ".jpg", ".jpeg", ".tga", ".psd", ".tiff" };

            foreach (string ext in extensions)
            {
                string candidate = Path.Combine(PHOTOS_FOLDER, assetName + ext).Replace("\\", "/");
                if (File.Exists(candidate))
                    return candidate;
            }

            return null;
        }
    }
}
