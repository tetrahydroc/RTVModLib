extends "res://Scripts/ParticleInstance.gd"

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("particleinstance-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("particleinstance-_physics_process")
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
	_lib._dispatch("particleinstance-_physics_process-post", [delta])
	_lib._dispatch_deferred("particleinstance-_physics_process-callback", [delta])

func Emit(quad: bool, size: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(quad, size)
		return
	_lib._dispatch("particleinstance-emit-pre", [quad, size])
	var _repl = _lib._get_hooks("particleinstance-emit")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([quad, size])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(quad, size)
	else:
		super(quad, size)
	_lib._dispatch("particleinstance-emit-post", [quad, size])
	_lib._dispatch_deferred("particleinstance-emit-callback", [quad, size])

func Flash():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("particleinstance-flash-pre", [])
	var _repl = _lib._get_hooks("particleinstance-flash")
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
	_lib._dispatch("particleinstance-flash-post", [])
	_lib._dispatch_deferred("particleinstance-flash-callback", [])

func Cache():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("particleinstance-cache-pre", [])
	var _repl = _lib._get_hooks("particleinstance-cache")
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
	_lib._dispatch("particleinstance-cache-post", [])
	_lib._dispatch_deferred("particleinstance-cache-callback", [])

