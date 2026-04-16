extends "res://Scripts/PIP.gd"

func _physics_process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("pip-_physics_process-pre", [_delta])
	var _repl = _lib._get_hooks("pip-_physics_process")
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
	_lib._dispatch("pip-_physics_process-post", [_delta])
	_lib._dispatch_deferred("pip-_physics_process-callback", [_delta])

