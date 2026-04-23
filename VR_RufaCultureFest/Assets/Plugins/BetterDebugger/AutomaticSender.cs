using Object = UnityEngine.Object;
using UnityEngine;

namespace BetterLog
{
	public class AutomaticSender : MonoBehaviour
	{
		[Header("Reference")]
		[SerializeField]
		SortLog sortLog;
		
		void Start()
		{
			sortLog.ue_message.AddListener(SendLog());
		}
		
		public void SendLog()
		{
			
		}
	}
}
