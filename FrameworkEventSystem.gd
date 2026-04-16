extends "res://Scripts/EventSystem.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-_ready-pre", [])
	var _repl = _lib._get_hooks("eventsystem-_ready")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip and not _rtv_ready_done:
			super()
			_rtv_ready_done = true
	else:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
	_lib._dispatch("eventsystem-_ready-post", [])
	_lib._dispatch_deferred("eventsystem-_ready-callback", [])

func GetAvailableEvents():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-getavailableevents-pre", [])
	var _repl = _lib._get_hooks("eventsystem-getavailableevents")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-getavailableevents-post", [])
	_lib._dispatch_deferred("eventsystem-getavailableevents-callback", [])

func ActivateDynamicEvent():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-activatedynamicevent-pre", [])
	var _repl = _lib._get_hooks("eventsystem-activatedynamicevent")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-activatedynamicevent-post", [])
	_lib._dispatch_deferred("eventsystem-activatedynamicevent-callback", [])

func ActivateTraderEvent():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-activatetraderevent-pre", [])
	var _repl = _lib._get_hooks("eventsystem-activatetraderevent")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-activatetraderevent-post", [])
	_lib._dispatch_deferred("eventsystem-activatetraderevent-callback", [])

func ActivateSpecialEvent():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-activatespecialevent-pre", [])
	var _repl = _lib._get_hooks("eventsystem-activatespecialevent")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-activatespecialevent-post", [])
	_lib._dispatch_deferred("eventsystem-activatespecialevent-callback", [])

func FighterJet():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-fighterjet-pre", [])
	var _repl = _lib._get_hooks("eventsystem-fighterjet")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-fighterjet-post", [])
	_lib._dispatch_deferred("eventsystem-fighterjet-callback", [])

func Airdrop():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-airdrop-pre", [])
	var _repl = _lib._get_hooks("eventsystem-airdrop")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-airdrop-post", [])
	_lib._dispatch_deferred("eventsystem-airdrop-callback", [])

func Police():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-police-pre", [])
	var _repl = _lib._get_hooks("eventsystem-police")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-police-post", [])
	_lib._dispatch_deferred("eventsystem-police-callback", [])

func Helicopter():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-helicopter-pre", [])
	var _repl = _lib._get_hooks("eventsystem-helicopter")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-helicopter-post", [])
	_lib._dispatch_deferred("eventsystem-helicopter-callback", [])

func CrashSite():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-crashsite-pre", [])
	var _repl = _lib._get_hooks("eventsystem-crashsite")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-crashsite-post", [])
	_lib._dispatch_deferred("eventsystem-crashsite-callback", [])

func BTR():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-btr-pre", [])
	var _repl = _lib._get_hooks("eventsystem-btr")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-btr-post", [])
	_lib._dispatch_deferred("eventsystem-btr-callback", [])

func ActivateTrader():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-activatetrader-pre", [])
	var _repl = _lib._get_hooks("eventsystem-activatetrader")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-activatetrader-post", [])
	_lib._dispatch_deferred("eventsystem-activatetrader-callback", [])

func DeactivateTrader():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-deactivatetrader-pre", [])
	var _repl = _lib._get_hooks("eventsystem-deactivatetrader")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-deactivatetrader-post", [])
	_lib._dispatch_deferred("eventsystem-deactivatetrader-callback", [])

func Cat():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-cat-pre", [])
	var _repl = _lib._get_hooks("eventsystem-cat")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-cat-post", [])
	_lib._dispatch_deferred("eventsystem-cat-callback", [])

func Transmission():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("eventsystem-transmission-pre", [])
	var _repl = _lib._get_hooks("eventsystem-transmission")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super()
	else:
		super()
	_lib._dispatch("eventsystem-transmission-post", [])
	_lib._dispatch_deferred("eventsystem-transmission-callback", [])

