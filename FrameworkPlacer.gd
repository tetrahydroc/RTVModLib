extends "res://Scripts/Placer.gd"

func _input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._dispatch("placer-_input-pre", [event])
	var _repl = _lib._get_hooks("placer-_input")
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
	_lib._dispatch("placer-_input-post", [event])
	_lib._dispatch_deferred("placer-_input-callback", [event])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("placer-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("placer-_physics_process")
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
	_lib._dispatch("placer-_physics_process-post", [delta])
	_lib._dispatch_deferred("placer-_physics_process-callback", [delta])

func Collided(body: Node3D):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(body)
		return
	_lib._dispatch("placer-collided-pre", [body])
	var _repl = _lib._get_hooks("placer-collided")
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
	_lib._dispatch("placer-collided-post", [body])
	_lib._dispatch_deferred("placer-collided-callback", [body])

func ContextPlace(target: Node3D):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(target)
		return
	_lib._dispatch("placer-contextplace-pre", [target])
	var _repl = _lib._get_hooks("placer-contextplace")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([target])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(target)
	else:
		super(target)
	_lib._dispatch("placer-contextplace-post", [target])
	_lib._dispatch_deferred("placer-contextplace-callback", [target])

func AttachAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("placer-attachaudio-pre", [])
	var _repl = _lib._get_hooks("placer-attachaudio")
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
	_lib._dispatch("placer-attachaudio-post", [])
	_lib._dispatch_deferred("placer-attachaudio-callback", [])

