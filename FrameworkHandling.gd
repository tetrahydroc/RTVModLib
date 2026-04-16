extends "res://Scripts/Handling.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("handling-_ready-pre", [])
	var _repl = _lib._get_hooks("handling-_ready")
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
	_lib._dispatch("handling-_ready-post", [])
	_lib._dispatch_deferred("handling-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("handling-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("handling-_physics_process")
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
	_lib._dispatch("handling-_physics_process-post", [delta])
	_lib._dispatch_deferred("handling-_physics_process-callback", [delta])

func WeaponPosition():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("handling-weaponposition-pre", [])
	var _repl = _lib._get_hooks("handling-weaponposition")
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
	_lib._dispatch("handling-weaponposition-post", [])
	_lib._dispatch_deferred("handling-weaponposition-callback", [])

func WeaponHandling(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("handling-weaponhandling-pre", [delta])
	var _repl = _lib._get_hooks("handling-weaponhandling")
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
	_lib._dispatch("handling-weaponhandling-post", [delta])
	_lib._dispatch_deferred("handling-weaponhandling-callback", [delta])

func BasicHandling(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("handling-basichandling-pre", [delta])
	var _repl = _lib._get_hooks("handling-basichandling")
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
	_lib._dispatch("handling-basichandling-post", [delta])
	_lib._dispatch_deferred("handling-basichandling-callback", [delta])

