extends "res://Scripts/UIManager.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("uimanager-_ready-pre", [])
	var _repl = _lib._get_hooks("uimanager-_ready")
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
	_lib._dispatch("uimanager-_ready-post", [])
	_lib._dispatch_deferred("uimanager-_ready-callback", [])

func _input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("uimanager-_input-pre", [event])
	var _repl = _lib._get_hooks("uimanager-_input")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([event])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(event)
	else:
		super(event)
	_lib._dispatch("uimanager-_input-post", [event])
	_lib._dispatch_deferred("uimanager-_input-callback", [event])

func Return():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("uimanager-return-pre", [])
	var _repl = _lib._get_hooks("uimanager-return")
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
	_lib._dispatch("uimanager-return-post", [])
	_lib._dispatch_deferred("uimanager-return-callback", [])

func ToggleSettings():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("uimanager-togglesettings-pre", [])
	var _repl = _lib._get_hooks("uimanager-togglesettings")
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
	_lib._dispatch("uimanager-togglesettings-post", [])
	_lib._dispatch_deferred("uimanager-togglesettings-callback", [])

func ToggleInterface():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("uimanager-toggleinterface-pre", [])
	var _repl = _lib._get_hooks("uimanager-toggleinterface")
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
	_lib._dispatch("uimanager-toggleinterface-post", [])
	_lib._dispatch_deferred("uimanager-toggleinterface-callback", [])

func OpenContainer(container: LootContainer):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(container)
		return
	_lib._caller = self
	_lib._dispatch("uimanager-opencontainer-pre", [container])
	var _repl = _lib._get_hooks("uimanager-opencontainer")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([container])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(container)
	else:
		super(container)
	_lib._dispatch("uimanager-opencontainer-post", [container])
	_lib._dispatch_deferred("uimanager-opencontainer-callback", [container])

func OpenTrader(trader):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(trader)
		return
	_lib._caller = self
	_lib._dispatch("uimanager-opentrader-pre", [trader])
	var _repl = _lib._get_hooks("uimanager-opentrader")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([trader])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(trader)
	else:
		super(trader)
	_lib._dispatch("uimanager-opentrader-post", [trader])
	_lib._dispatch_deferred("uimanager-opentrader-callback", [trader])

func UIOpen():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("uimanager-uiopen-pre", [])
	var _repl = _lib._get_hooks("uimanager-uiopen")
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
	_lib._dispatch("uimanager-uiopen-post", [])
	_lib._dispatch_deferred("uimanager-uiopen-callback", [])

func UIClose():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("uimanager-uiclose-pre", [])
	var _repl = _lib._get_hooks("uimanager-uiclose")
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
	_lib._dispatch("uimanager-uiclose-post", [])
	_lib._dispatch_deferred("uimanager-uiclose-callback", [])

func ClickAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("uimanager-clickaudio-pre", [])
	var _repl = _lib._get_hooks("uimanager-clickaudio")
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
	_lib._dispatch("uimanager-clickaudio-post", [])
	_lib._dispatch_deferred("uimanager-clickaudio-callback", [])

