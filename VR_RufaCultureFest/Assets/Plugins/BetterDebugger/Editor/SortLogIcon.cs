using UnityEditor;
using UnityEngine;

namespace Plugins.BetterDebugger.Editor
{
    [InitializeOnLoad]

    public static class SortLogIcon
    {
        static SortLogIcon()
        {
            EditorApplication.delayCall += SetIcon;
        }

        static void SetIcon()
        {
            var _script = AssetDatabase.LoadAssetAtPath<MonoScript>(
                "Assets/Plugins/BetterDebugger/SortLog.cs"
            );

            var _icon = AssetDatabase.LoadAssetAtPath<Texture2D>(
                "Assets/Plugins/BetterDebugger/Editor/Icons/sortlog_icon.png"
            );

            if (_script != null && _icon != null)
            {
                EditorGUIUtility.SetIconForObject(_script, _icon);
            }
            else
            {
                Debug.LogWarning("Script o icona non trovati");
            }
        }
    }
}