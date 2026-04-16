extends "res://Scripts/Profiler.gd"

func _input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._dispatch("profiler-_input-pre", [event])
	var _repl = _lib._get_hooks("profiler-_input")
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
	_lib._dispatch("profiler-_input-post", [event])
	_lib._dispatch_deferred("profiler-_input-callback", [event])

func Basic():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("profiler-basic-pre", [])
	var _repl = _lib._get_hooks("profiler-basic")
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
	_lib._dispatch("profiler-basic-post", [])
	_lib._dispatch_deferred("profiler-basic-callback", [])

func _process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("profiler-_process-pre", [_delta])
	var _repl = _lib._get_hooks("profiler-_process")
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
	_lib._dispatch("profiler-_process-post", [_delta])
	_lib._dispatch_deferred("profiler-_process-callback", [_delta])

