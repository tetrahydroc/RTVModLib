extends "res://Scripts/Television.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("television-_ready-pre", [])
	var _repl = _lib._get_hooks("television-_ready")
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
	_lib._dispatch("television-_ready-post", [])
	_lib._dispatch_deferred("television-_ready-callback", [])

func _physics_process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("television-_physics_process-pre", [_delta])
	var _repl = _lib._get_hooks("television-_physics_process")
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
	_lib._dispatch("television-_physics_process-post", [_delta])
	_lib._dispatch_deferred("television-_physics_process-callback", [_delta])

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("television-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("television-updatetooltip")
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
	_lib._dispatch("television-updatetooltip-post", [])
	_lib._dispatch_deferred("television-updatetooltip-callback", [])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("television-interact-pre", [])
	var _repl = _lib._get_hooks("television-interact")
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
	_lib._dispatch("television-interact-post", [])
	_lib._dispatch_deferred("television-interact-callback", [])

func Activate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("television-activate-pre", [])
	var _repl = _lib._get_hooks("television-activate")
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
	_lib._dispatch("television-activate-post", [])
	_lib._dispatch_deferred("television-activate-callback", [])

func Deactivate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("television-deactivate-pre", [])
	var _repl = _lib._get_hooks("television-deactivate")
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
	_lib._dispatch("television-deactivate-post", [])
	_lib._dispatch_deferred("television-deactivate-callback", [])

func MoveReset():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("television-movereset-pre", [])
	var _repl = _lib._get_hooks("television-movereset")
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
	_lib._dispatch("television-movereset-post", [])
	_lib._dispatch_deferred("television-movereset-callback", [])

func PlayToggle():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("television-playtoggle-pre", [])
	var _repl = _lib._get_hooks("television-playtoggle")
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
	_lib._dispatch("television-playtoggle-post", [])
	_lib._dispatch_deferred("television-playtoggle-callback", [])

