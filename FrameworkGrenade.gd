extends "res://Scripts/Grenade.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("grenade-_ready-pre", [])
	var _repl = _lib._get_hooks("grenade-_ready")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip and not _rtv_ready_done:
			super()
			_rtv_ready_done = true
	else:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
	_lib._dispatch("grenade-_ready-post", [])
	_lib._dispatch_deferred("grenade-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("grenade-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("grenade-_physics_process")
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
	_lib._dispatch("grenade-_physics_process-post", [delta])
	_lib._dispatch_deferred("grenade-_physics_process-callback", [delta])

func Detonate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("grenade-detonate-pre", [])
	var _repl = _lib._get_hooks("grenade-detonate")
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
	_lib._dispatch("grenade-detonate-post", [])
	_lib._dispatch_deferred("grenade-detonate-callback", [])

func Collided(body: Node3D):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(body)
		return
	_lib._caller = self
	_lib._dispatch("grenade-collided-pre", [body])
	var _repl = _lib._get_hooks("grenade-collided")
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
	_lib._dispatch("grenade-collided-post", [body])
	_lib._dispatch_deferred("grenade-collided-callback", [body])

func PlayBounce(surface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(surface)
		return
	_lib._caller = self
	_lib._dispatch("grenade-playbounce-pre", [surface])
	var _repl = _lib._get_hooks("grenade-playbounce")
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
	_lib._dispatch("grenade-playbounce-post", [surface])
	_lib._dispatch_deferred("grenade-playbounce-callback", [surface])

