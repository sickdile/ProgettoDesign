using System;
using UnityEngine;
using UnityEngine.Events;
using Object = UnityEngine.Object;

namespace Plugins.BetterDebugger
{
	
	[AddComponentMenu("BetterDebugger/Receiver")]
	public class SortLog : MonoBehaviour
	{
		[Header("Settings")]
		[SerializeField]
		bool showLogs;
		[SerializeField]
		string prefix;
		[SerializeField]
		Color prefixColor =  new Color(255, 0, 0, 255);
		
		string hexColor;
		
		[NonSerialized]
		public UnityEvent<object, Object> ue_Log;
		
		void OnValidate()
		{
			hexColor = "#"+ColorUtility.ToHtmlStringRGBA(prefixColor);
		}

		void Awake()
		{
			ue_Log ??= new UnityEvent<object, Object>();
		}

		void Start()
		{
			ue_Log.AddListener(Log);
		}

		void Log(object _message, Object _sender)
		{
			if(!showLogs) return;
			Debug.Log($"<color={hexColor}>{prefix}: {_message}", _sender);
		}
	}
}