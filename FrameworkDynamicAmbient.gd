extends "res://Scripts/DynamicAmbient.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("dynamicambient-_ready-pre", [])
	var _repl = _lib._get_hooks("dynamicambient-_ready")
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
	_lib._dispatch("dynamicambient-_ready-post", [])
	_lib._dispatch_deferred("dynamicambient-_ready-callback", [])

func AssignEvents():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("dynamicambient-assignevents-pre", [])
	var _repl = _lib._get_hooks("dynamicambient-assignevents")
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
	_lib._dispatch("dynamicambient-assignevents-post", [])
	_lib._dispatch_deferred("dynamicambient-assignevents-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("dynamicambient-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("dynamicambient-_physics_process")
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
	_lib._dispatch("dynamicambient-_physics_process-post", [delta])
	_lib._dispatch_deferred("dynamicambient-_physics_process-callback", [delta])

func PlayDynamicAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("dynamicambient-playdynamicaudio-pre", [])
	var _repl = _lib._get_hooks("dynamicambient-playdynamicaudio")
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
	_lib._dispatch("dynamicambient-playdynamicaudio-post", [])
	_lib._dispatch_deferred("dynamicambient-playdynamicaudio-callback", [])

