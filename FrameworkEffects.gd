extends "res://Scripts/Effects.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._dispatch("effects-_ready-pre", [])
	var _repl = _lib._get_hooks("effects-_ready")
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
	_lib._dispatch("effects-_ready-post", [])
	_lib._dispatch_deferred("effects-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("effects-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("effects-_physics_process")
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
	_lib._dispatch("effects-_physics_process-post", [delta])
	_lib._dispatch_deferred("effects-_physics_process-callback", [delta])

func ImpactEffect(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("effects-impacteffect-pre", [delta])
	var _repl = _lib._get_hooks("effects-impacteffect")
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
	_lib._dispatch("effects-impacteffect-post", [delta])
	_lib._dispatch_deferred("effects-impacteffect-callback", [delta])

func DamageEffect(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("effects-damageeffect-pre", [delta])
	var _repl = _lib._get_hooks("effects-damageeffect")
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
	_lib._dispatch("effects-damageeffect-post", [delta])
	_lib._dispatch_deferred("effects-damageeffect-callback", [delta])

func SleepingEffect(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("effects-sleepingeffect-pre", [delta])
	var _repl = _lib._get_hooks("effects-sleepingeffect")
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
	_lib._dispatch("effects-sleepingeffect-post", [delta])
	_lib._dispatch_deferred("effects-sleepingeffect-callback", [delta])

func HealthEffect(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("effects-healtheffect-pre", [delta])
	var _repl = _lib._get_hooks("effects-healtheffect")
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
	_lib._dispatch("effects-healtheffect-post", [delta])
	_lib._dispatch_deferred("effects-healtheffect-callback", [delta])

func SubmergedEffect():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("effects-submergedeffect-pre", [])
	var _repl = _lib._get_hooks("effects-submergedeffect")
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
	_lib._dispatch("effects-submergedeffect-post", [])
	_lib._dispatch_deferred("effects-submergedeffect-callback", [])

