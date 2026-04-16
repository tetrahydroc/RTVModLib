extends "res://Scripts/Detector.gd"

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("detector-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("detector-_physics_process")
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
	_lib._dispatch("detector-_physics_process-post", [delta])
	_lib._dispatch_deferred("detector-_physics_process-callback", [delta])

func Detect():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("detector-detect-pre", [])
	var _repl = _lib._get_hooks("detector-detect")
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
	_lib._dispatch("detector-detect-post", [])
	_lib._dispatch_deferred("detector-detect-callback", [])

func Indoor(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("detector-indoor-pre", [delta])
	var _repl = _lib._get_hooks("detector-indoor")
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
	_lib._dispatch("detector-indoor-post", [delta])
	_lib._dispatch_deferred("detector-indoor-callback", [delta])

