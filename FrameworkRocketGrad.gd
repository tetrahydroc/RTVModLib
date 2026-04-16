extends "res://Scripts/RocketGrad.gd"

func ExecuteLaunch(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("rocketgrad-executelaunch-pre", [_value])
	var _repl = _lib._get_hooks("rocketgrad-executelaunch")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("rocketgrad-executelaunch-post", [_value])
	_lib._dispatch_deferred("rocketgrad-executelaunch-callback", [_value])

func _process(delta: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("rocketgrad-_process-pre", [delta])
	var _repl = _lib._get_hooks("rocketgrad-_process")
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
	_lib._dispatch("rocketgrad-_process-post", [delta])
	_lib._dispatch_deferred("rocketgrad-_process-callback", [delta])

