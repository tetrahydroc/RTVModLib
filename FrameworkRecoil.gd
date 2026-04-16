extends "res://Scripts/Recoil.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("recoil-_ready-pre", [])
	var _repl = _lib._get_hooks("recoil-_ready")
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
	_lib._dispatch("recoil-_ready-post", [])
	_lib._dispatch_deferred("recoil-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("recoil-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("recoil-_physics_process")
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
	_lib._dispatch("recoil-_physics_process-post", [delta])
	_lib._dispatch_deferred("recoil-_physics_process-callback", [delta])

func CalculateRecoil(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("recoil-calculaterecoil-pre", [delta])
	var _repl = _lib._get_hooks("recoil-calculaterecoil")
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
	_lib._dispatch("recoil-calculaterecoil-post", [delta])
	_lib._dispatch_deferred("recoil-calculaterecoil-callback", [delta])

func ApplyRecoil():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("recoil-applyrecoil-pre", [])
	var _repl = _lib._get_hooks("recoil-applyrecoil")
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
	_lib._dispatch("recoil-applyrecoil-post", [])
	_lib._dispatch_deferred("recoil-applyrecoil-callback", [])

