using System.Collections.Generic;
using Plugins.BetterDebugger;
using ScriptableObject.Exposition;
using UI;
using UnityEngine;
using EventHandler = ScriptableObject.Event.EventHandler;

namespace Managers
{
    [RequireComponent(typeof(AutomaticSender))]
    public class ExpositionManager : MonoBehaviour
    {
        [Header("References")] 
        AutomaticSender log;
        [SerializeField] EventHandler eventHandler;

        [Header("Esposizioni")]
        [SerializeField] Exposition exposition_default;
        [SerializeField] Exposition esposizione_01;
        
        // ReSharper disable once InconsistentNaming
        readonly Dictionary<int, UIEspositore> _espositori =  new();
        
        public IReadOnlyDictionary<int, UIEspositore> Espositori => _espositori;

        public void AddEspositore(int _key, UIEspositore _uiEspositore)
        {
            if (_espositori.ContainsKey(_key))
            {
                log?.SendLog($"Already exists! Check {_key} index for duplicates.", this);
            }
            _espositori.Add(_key, _uiEspositore);
        }

        void Start()
        {
            log = GetComponent<AutomaticSender>();
            _ = DispatchStartPhotos();
        }

        async Awaitable DispatchStartPhotos()
        {
            await Awaitable.NextFrameAsync();
            DispatchPhotos(exposition_default);
        }

        void DispatchPhotos(Exposition _exposition)
        {
            var _numEspositori = _espositori.Count;
            
            if (_numEspositori == 0) return;
            
            for (var _i = 1; _i < _numEspositori + 1; _i++)
            {
                if (_espositori[_i] == null) continue;
                _espositori[_i].SetMyPhoto(_exposition.Photos[_i - 1]);
            }
            
            eventHandler.ev_UpdateExposition.Invoke();
        }
    }
}
