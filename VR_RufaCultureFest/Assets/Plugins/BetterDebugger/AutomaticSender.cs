using UnityEngine;

namespace Plugins.BetterDebugger
{
	[AddComponentMenu("BetterDebugger/Sender")]
	public class AutomaticSender : MonoBehaviour
	{
		[Header("Reference")]
		[SerializeField]
		SortLog sortLog;
		
		public void SendLog(object _message, Object _sender)
		{
			sortLog.ue_Log.Invoke(_message, _sender);
		}
	}
}
