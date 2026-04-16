extends "res://Scripts/Damage.gd"

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("damage-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("damage-_physics_process")
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
	_lib._dispatch("damage-_physics_process-post", [delta])
	_lib._dispatch_deferred("damage-_physics_process-callback", [delta])

