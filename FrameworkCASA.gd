extends "res://Scripts/CASA.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("casa-_ready-pre", [])
	var _repl = _lib._get_hooks("casa-_ready")
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
	_lib._dispatch("casa-_ready-post", [])
	_lib._dispatch_deferred("casa-_ready-callback", [])

func InitializeDrop():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("casa-initializedrop-pre", [])
	var _repl = _lib._get_hooks("casa-initializedrop")
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
	_lib._dispatch("casa-initializedrop-post", [])
	_lib._dispatch_deferred("casa-initializedrop-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("casa-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("casa-_physics_process")
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
	_lib._dispatch("casa-_physics_process-post", [delta])
	_lib._dispatch_deferred("casa-_physics_process-callback", [delta])

func Sequence(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("casa-sequence-pre", [delta])
	var _repl = _lib._get_hooks("casa-sequence")
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
	_lib._dispatch("casa-sequence-post", [delta])
	_lib._dispatch_deferred("casa-sequence-callback", [delta])

func Parachute(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("casa-parachute-pre", [delta])
	var _repl = _lib._get_hooks("casa-parachute")
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
	_lib._dispatch("casa-parachute-post", [delta])
	_lib._dispatch_deferred("casa-parachute-callback", [delta])

func Collided(body: Node3D):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(body)
		return
	_lib._caller = self
	_lib._dispatch("casa-collided-pre", [body])
	var _repl = _lib._get_hooks("casa-collided")
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
	_lib._dispatch("casa-collided-post", [body])
	_lib._dispatch_deferred("casa-collided-callback", [body])

func DistanceClear():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("casa-distanceclear-pre", [])
	var _repl = _lib._get_hooks("casa-distanceclear")
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
	_lib._dispatch("casa-distanceclear-post", [])
	_lib._dispatch_deferred("casa-distanceclear-callback", [])

func PlayRelease():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("casa-playrelease-pre", [])
	var _repl = _lib._get_hooks("casa-playrelease")
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
	_lib._dispatch("casa-playrelease-post", [])
	_lib._dispatch_deferred("casa-playrelease-callback", [])

func PlayBounce():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("casa-playbounce-pre", [])
	var _repl = _lib._get_hooks("casa-playbounce")
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
	_lib._dispatch("casa-playbounce-post", [])
	_lib._dispatch_deferred("casa-playbounce-callback", [])

