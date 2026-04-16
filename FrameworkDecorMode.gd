extends "res://Scripts/DecorMode.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("decormode-_ready-pre", [])
	var _repl = _lib._get_hooks("decormode-_ready")
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
	_lib._dispatch("decormode-_ready-post", [])
	_lib._dispatch_deferred("decormode-_ready-callback", [])

func _physics_process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._caller = self
	_lib._dispatch("decormode-_physics_process-pre", [_delta])
	var _repl = _lib._get_hooks("decormode-_physics_process")
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
	_lib._dispatch("decormode-_physics_process-post", [_delta])
	_lib._dispatch_deferred("decormode-_physics_process-callback", [_delta])

func FurnitureVisibility(visibility: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(visibility)
		return
	_lib._caller = self
	_lib._dispatch("decormode-furniturevisibility-pre", [visibility])
	var _repl = _lib._get_hooks("decormode-furniturevisibility")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([visibility])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(visibility)
	else:
		super(visibility)
	_lib._dispatch("decormode-furniturevisibility-post", [visibility])
	_lib._dispatch_deferred("decormode-furniturevisibility-callback", [visibility])

