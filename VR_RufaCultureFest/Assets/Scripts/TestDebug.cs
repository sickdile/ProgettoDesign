using System;
using Plugins.BetterDebugger;
using UnityEngine;

public class TestDebug : MonoBehaviour
{
	AutomaticSender sender;
	void Start()
	{
		sender = GetComponent<AutomaticSender>();
	}

	private void Update()
	{
		sender.SendLog("cacca", this);
	}
}
