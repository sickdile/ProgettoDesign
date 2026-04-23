using Object = UnityEngine.Object;
using UnityEngine;

namespace BetterLog
{
	
	[AddComponentMenu("BetterLog/Log")]
	public class SortLog : MonoBehaviour
	{
		[Header("Settings")]
		[SerializeField]
		bool showLogs;
		[SerializeField]
		string prefix;
		[SerializeField]
		Color prefixColor;
		
		string hexColor;
		
		public event UnityEvent<object, Object> ue_message;
		
		void OnValidate()
		{
			hexColor = "#"+ColorUtility.ToHtmlStringRGBA(prefixColor);
		}
		
		private void Awake() 
		{
			if(ue_message == null) ue_message = new UnityEvent<object, Object>();
		}
		
		private void Start()
		{
			ue_message.AddListener(Log);
		}
		
		public void Log(object _message, Object _sender)
		{
			if(!showLogs) return;
			Debug.Log($"<color={prefixColor}>{prefix}: {_message}", _sender);
		}
	}
}