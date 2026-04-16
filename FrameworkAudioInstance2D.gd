extends "res://Scripts/AudioInstance2D.gd"

func PlayInstance(audioEvent: AudioEvent):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(audioEvent)
		return
	_lib._caller = self
	_lib._dispatch("audioinstance2d-playinstance-pre", [audioEvent])
	var _repl = _lib._get_hooks("audioinstance2d-playinstance")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([audioEvent])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(audioEvent)
	else:
		super(audioEvent)
	_lib._dispatch("audioinstance2d-playinstance-post", [audioEvent])
	_lib._dispatch_deferred("audioinstance2d-playinstance-callback", [audioEvent])

func _process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._caller = self
	_lib._dispatch("audioinstance2d-_process-pre", [_delta])
	var _repl = _lib._get_hooks("audioinstance2d-_process")
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
	_lib._dispatch("audioinstance2d-_process-post", [_delta])
	_lib._dispatch_deferred("audioinstance2d-_process-callback", [_delta])

