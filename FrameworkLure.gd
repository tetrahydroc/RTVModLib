extends "res://Scripts/Lure.gd"

func ConnectBounce():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("lure-connectbounce-pre", [])
	var _repl = _lib._get_hooks("lure-connectbounce")
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
	_lib._dispatch("lure-connectbounce-post", [])
	_lib._dispatch_deferred("lure-connectbounce-callback", [])

func Collided(body: Node3D):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(body)
		return
	_lib._caller = self
	_lib._dispatch("lure-collided-pre", [body])
	var _repl = _lib._get_hooks("lure-collided")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([body])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(body)
	else:
		super(body)
	_lib._dispatch("lure-collided-post", [body])
	_lib._dispatch_deferred("lure-collided-callback", [body])

func PlayBounce(surface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(surface)
		return
	_lib._caller = self
	_lib._dispatch("lure-playbounce-pre", [surface])
	var _repl = _lib._get_hooks("lure-playbounce")
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
	_lib._dispatch("lure-playbounce-post", [surface])
	_lib._dispatch_deferred("lure-playbounce-callback", [surface])

