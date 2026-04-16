extends "res://Scripts/Hit.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("hit-_ready-pre", [])
	var _repl = _lib._get_hooks("hit-_ready")
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
	_lib._dispatch("hit-_ready-post", [])
	_lib._dispatch_deferred("hit-_ready-callback", [])

func Fade():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("hit-fade-pre", [])
	var _repl = _lib._get_hooks("hit-fade")
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
	_lib._dispatch("hit-fade-post", [])
	_lib._dispatch_deferred("hit-fade-callback", [])

func Emit():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("hit-emit-pre", [])
	var _repl = _lib._get_hooks("hit-emit")
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
	_lib._dispatch("hit-emit-post", [])
	_lib._dispatch_deferred("hit-emit-callback", [])

func PlayHit(surface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(surface)
		return
	_lib._dispatch("hit-playhit-pre", [surface])
	var _repl = _lib._get_hooks("hit-playhit")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([surface])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(surface)
	else:
		super(surface)
	_lib._dispatch("hit-playhit-post", [surface])
	_lib._dispatch_deferred("hit-playhit-callback", [surface])

func PlayKnifeHit(surface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(surface)
		return
	_lib._dispatch("hit-playknifehit-pre", [surface])
	var _repl = _lib._get_hooks("hit-playknifehit")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([surface])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(surface)
	else:
		super(surface)
	_lib._dispatch("hit-playknifehit-post", [surface])
	_lib._dispatch_deferred("hit-playknifehit-callback", [surface])

func PlayKnifeHitFlesh(attack: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(attack)
		return
	_lib._dispatch("hit-playknifehitflesh-pre", [attack])
	var _repl = _lib._get_hooks("hit-playknifehitflesh")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([attack])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(attack)
	else:
		super(attack)
	_lib._dispatch("hit-playknifehitflesh-post", [attack])
	_lib._dispatch_deferred("hit-playknifehitflesh-callback", [attack])

