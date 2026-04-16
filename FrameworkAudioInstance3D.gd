extends "res://Scripts/AudioInstance3D.gd"

func PlayInstance(audioEvent: AudioEvent, unitSize: float, maxDistance: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(audioEvent, unitSize, maxDistance)
		return
	_lib._dispatch("audioinstance3d-playinstance-pre", [audioEvent, unitSize, maxDistance])
	var _repl = _lib._get_hooks("audioinstance3d-playinstance")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([audioEvent, unitSize, maxDistance])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(audioEvent, unitSize, maxDistance)
	else:
		super(audioEvent, unitSize, maxDistance)
	_lib._dispatch("audioinstance3d-playinstance-post", [audioEvent, unitSize, maxDistance])
	_lib._dispatch_deferred("audioinstance3d-playinstance-callback", [audioEvent, unitSize, maxDistance])

func _process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("audioinstance3d-_process-pre", [_delta])
	var _repl = _lib._get_hooks("audioinstance3d-_process")
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
	_lib._dispatch("audioinstance3d-_process-post", [_delta])
	_lib._dispatch_deferred("audioinstance3d-_process-callback", [_delta])

