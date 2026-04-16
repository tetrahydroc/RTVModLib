extends "res://Scripts/Impulse.gd"

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("impulse-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("impulse-_physics_process")
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
	_lib._dispatch("impulse-_physics_process-post", [delta])
	_lib._dispatch_deferred("impulse-_physics_process-callback", [delta])

func JumpKick(multiplier):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(multiplier)
		return
	_lib._dispatch("impulse-jumpkick-pre", [multiplier])
	var _repl = _lib._get_hooks("impulse-jumpkick")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([multiplier])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(multiplier)
	else:
		super(multiplier)
	_lib._dispatch("impulse-jumpkick-post", [multiplier])
	_lib._dispatch_deferred("impulse-jumpkick-callback", [multiplier])

func LandKick(multiplier):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(multiplier)
		return
	_lib._dispatch("impulse-landkick-pre", [multiplier])
	var _repl = _lib._get_hooks("impulse-landkick")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([multiplier])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(multiplier)
	else:
		super(multiplier)
	_lib._dispatch("impulse-landkick-post", [multiplier])
	_lib._dispatch_deferred("impulse-landkick-callback", [multiplier])

