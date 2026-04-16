extends "res://Scripts/MuzzleFlash.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("muzzleflash-_ready-pre", [])
	var _repl = _lib._get_hooks("muzzleflash-_ready")
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
	_lib._dispatch("muzzleflash-_ready-post", [])
	_lib._dispatch_deferred("muzzleflash-_ready-callback", [])

func _physics_process(delta: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("muzzleflash-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("muzzleflash-_physics_process")
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
	_lib._dispatch("muzzleflash-_physics_process-post", [delta])
	_lib._dispatch_deferred("muzzleflash-_physics_process-callback", [delta])

func Activate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("muzzleflash-activate-pre", [])
	var _repl = _lib._get_hooks("muzzleflash-activate")
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
	_lib._dispatch("muzzleflash-activate-post", [])
	_lib._dispatch_deferred("muzzleflash-activate-callback", [])

func Reset():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("muzzleflash-reset-pre", [])
	var _repl = _lib._get_hooks("muzzleflash-reset")
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
	_lib._dispatch("muzzleflash-reset-post", [])
	_lib._dispatch_deferred("muzzleflash-reset-callback", [])

