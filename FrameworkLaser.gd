extends "res://Scripts/Laser.gd"

func _input(_event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_event)
		return
	_lib._dispatch("laser-_input-pre", [_event])
	var _repl = _lib._get_hooks("laser-_input")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_event])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_event)
	else:
		super(_event)
	_lib._dispatch("laser-_input-post", [_event])
	_lib._dispatch_deferred("laser-_input-callback", [_event])

func _process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("laser-_process-pre", [_delta])
	var _repl = _lib._get_hooks("laser-_process")
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
	_lib._dispatch("laser-_process-post", [_delta])
	_lib._dispatch_deferred("laser-_process-callback", [_delta])

func PlayLaser():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("laser-playlaser-pre", [])
	var _repl = _lib._get_hooks("laser-playlaser")
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
	_lib._dispatch("laser-playlaser-post", [])
	_lib._dispatch_deferred("laser-playlaser-callback", [])

