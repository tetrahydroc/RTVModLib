extends "res://Scripts/Ragdoll.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ragdoll-_ready-pre", [])
	var _repl = _lib._get_hooks("ragdoll-_ready")
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
	_lib._dispatch("ragdoll-_ready-post", [])
	_lib._dispatch_deferred("ragdoll-_ready-callback", [])

func DeactivateBones():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ragdoll-deactivatebones-pre", [])
	var _repl = _lib._get_hooks("ragdoll-deactivatebones")
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
	_lib._dispatch("ragdoll-deactivatebones-post", [])
	_lib._dispatch_deferred("ragdoll-deactivatebones-callback", [])

func ActivateBones():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ragdoll-activatebones-pre", [])
	var _repl = _lib._get_hooks("ragdoll-activatebones")
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
	_lib._dispatch("ragdoll-activatebones-post", [])
	_lib._dispatch_deferred("ragdoll-activatebones-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ragdoll-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("ragdoll-_physics_process")
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
	_lib._dispatch("ragdoll-_physics_process-post", [delta])
	_lib._dispatch_deferred("ragdoll-_physics_process-callback", [delta])

func Activate(direction, force):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(direction, force)
		return
	_lib._dispatch("ragdoll-activate-pre", [direction, force])
	var _repl = _lib._get_hooks("ragdoll-activate")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([direction, force])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(direction, force)
	else:
		super(direction, force)
	_lib._dispatch("ragdoll-activate-post", [direction, force])
	_lib._dispatch_deferred("ragdoll-activate-callback", [direction, force])

func PlayRagdoll():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ragdoll-playragdoll-pre", [])
	var _repl = _lib._get_hooks("ragdoll-playragdoll")
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
	_lib._dispatch("ragdoll-playragdoll-post", [])
	_lib._dispatch_deferred("ragdoll-playragdoll-callback", [])

