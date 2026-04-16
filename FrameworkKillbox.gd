extends "res://Scripts/Killbox.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("killbox-_ready-pre", [])
	var _repl = _lib._get_hooks("killbox-_ready")
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
	_lib._dispatch("killbox-_ready-post", [])
	_lib._dispatch_deferred("killbox-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("killbox-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("killbox-_physics_process")
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
	_lib._dispatch("killbox-_physics_process-post", [delta])
	_lib._dispatch_deferred("killbox-_physics_process-callback", [delta])

func HandleItem(item):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(item)
		return
	_lib._caller = self
	_lib._dispatch("killbox-handleitem-pre", [item])
	var _repl = _lib._get_hooks("killbox-handleitem")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([item])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(item)
	else:
		super(item)
	_lib._dispatch("killbox-handleitem-post", [item])
	_lib._dispatch_deferred("killbox-handleitem-callback", [item])

func HandleController(controller):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(controller)
		return
	_lib._caller = self
	_lib._dispatch("killbox-handlecontroller-pre", [controller])
	var _repl = _lib._get_hooks("killbox-handlecontroller")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([controller])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(controller)
	else:
		super(controller)
	_lib._dispatch("killbox-handlecontroller-post", [controller])
	_lib._dispatch_deferred("killbox-handlecontroller-callback", [controller])

func PlayTeleport():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("killbox-playteleport-pre", [])
	var _repl = _lib._get_hooks("killbox-playteleport")
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
	_lib._dispatch("killbox-playteleport-post", [])
	_lib._dispatch_deferred("killbox-playteleport-callback", [])

