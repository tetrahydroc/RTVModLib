extends "res://Scripts/HUD.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("hud-_ready-pre", [])
	var _repl = _lib._get_hooks("hud-_ready")
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
	_lib._dispatch("hud-_ready-post", [])
	_lib._dispatch_deferred("hud-_ready-callback", [])

func _physics_process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("hud-_physics_process-pre", [_delta])
	var _repl = _lib._get_hooks("hud-_physics_process")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_delta)
	else:
		super(_delta)
	_lib._dispatch("hud-_physics_process-post", [_delta])
	_lib._dispatch_deferred("hud-_physics_process-callback", [_delta])

func Transition(transitionData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(transitionData)
		return
	_lib._dispatch("hud-transition-pre", [transitionData])
	var _repl = _lib._get_hooks("hud-transition")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([transitionData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(transitionData)
	else:
		super(transitionData)
	_lib._dispatch("hud-transition-post", [transitionData])
	_lib._dispatch_deferred("hud-transition-callback", [transitionData])

func ShowMap(state: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._dispatch("hud-showmap-pre", [state])
	var _repl = _lib._get_hooks("hud-showmap")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(state)
	else:
		super(state)
	_lib._dispatch("hud-showmap-post", [state])
	_lib._dispatch_deferred("hud-showmap-callback", [state])

func ShowFPS(state: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._dispatch("hud-showfps-pre", [state])
	var _repl = _lib._get_hooks("hud-showfps")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(state)
	else:
		super(state)
	_lib._dispatch("hud-showfps-post", [state])
	_lib._dispatch_deferred("hud-showfps-callback", [state])

func ShowVitals(state: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._dispatch("hud-showvitals-pre", [state])
	var _repl = _lib._get_hooks("hud-showvitals")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(state)
	else:
		super(state)
	_lib._dispatch("hud-showvitals-post", [state])
	_lib._dispatch_deferred("hud-showvitals-callback", [state])

func ShowMedical(state: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._dispatch("hud-showmedical-pre", [state])
	var _repl = _lib._get_hooks("hud-showmedical")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(state)
	else:
		super(state)
	_lib._dispatch("hud-showmedical-post", [state])
	_lib._dispatch_deferred("hud-showmedical-callback", [state])

func ShowPlacement(state: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._dispatch("hud-showplacement-pre", [state])
	var _repl = _lib._get_hooks("hud-showplacement")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(state)
	else:
		super(state)
	_lib._dispatch("hud-showplacement-post", [state])
	_lib._dispatch_deferred("hud-showplacement-callback", [state])

func ShowDecor(state: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._dispatch("hud-showdecor-pre", [state])
	var _repl = _lib._get_hooks("hud-showdecor")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(state)
	else:
		super(state)
	_lib._dispatch("hud-showdecor-post", [state])
	_lib._dispatch_deferred("hud-showdecor-callback", [state])

