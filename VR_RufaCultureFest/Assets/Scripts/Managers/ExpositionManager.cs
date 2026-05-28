using System.Collections.Generic;
using BaseScriptable.Exposition;
using Plugins.BetterDebugger;
using UI;
using UnityEngine;
using EventHandler = BaseScriptable.Event.EventHandler;

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

        [SerializeField] GameObject grp_exp_01;
        [SerializeField] GameObject grp_exp_02;


        #region DictionaryRelated

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

        public void ResetDictionary()
        {
            _espositori.Clear();
        }

        #endregion

        private void Start()
        {
            log = GetComponent<AutomaticSender>();
        }

        void OnEnable()
        {
            eventHandler.ev_ChangeProject.AddListener(ChangeExp);
        }

        public void OnDisable()
        {
            eventHandler.ev_ChangeProject.RemoveListener(ChangeExp);
        }

        void ChangeExp(int _expIndex)
        {
            ResetDictionary();
            switch (_expIndex)
            {
                case 1:
                    grp_exp_01.SetActive(true);
                    grp_exp_02.SetActive(false);
                    break;
                case 2:
                    grp_exp_01.SetActive(false);
                    grp_exp_02.SetActive(true);
                    break;
                default:
                    break;
            }
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
