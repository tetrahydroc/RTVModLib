extends "res://Scripts/RocketHelicopter.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rockethelicopter-_ready-pre", [])
	var _repl = _lib._get_hooks("rockethelicopter-_ready")
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
	_lib._dispatch("rockethelicopter-_ready-post", [])
	_lib._dispatch_deferred("rockethelicopter-_ready-callback", [])

func _physics_process(delta: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("rockethelicopter-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("rockethelicopter-_physics_process")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(delta)
	else:
		super(delta)
	_lib._dispatch("rockethelicopter-_physics_process-post", [delta])
	_lib._dispatch_deferred("rockethelicopter-_physics_process-callback", [delta])

