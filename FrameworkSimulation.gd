extends "res://Scripts/Simulation.gd"

func _process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("simulation-_process-pre", [delta])
	var _repl = _lib._get_hooks("simulation-_process")
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
	_lib._dispatch("simulation-_process-post", [delta])
	_lib._dispatch_deferred("simulation-_process-callback", [delta])

func WeatherChange():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("simulation-weatherchange-pre", [])
	var _repl = _lib._get_hooks("simulation-weatherchange")
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
	_lib._dispatch("simulation-weatherchange-post", [])
	_lib._dispatch_deferred("simulation-weatherchange-callback", [])

