extends "res://Scripts/BTR.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._dispatch("btr-_ready-pre", [])
	var _repl = _lib._get_hooks("btr-_ready")
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
	_lib._dispatch("btr-_ready-post", [])
	_lib._dispatch_deferred("btr-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("btr-_physics_process")
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
	_lib._dispatch("btr-_physics_process-post", [delta])
	_lib._dispatch_deferred("btr-_physics_process-callback", [delta])

func States(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-states-pre", [delta])
	var _repl = _lib._get_hooks("btr-states")
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
	_lib._dispatch("btr-states-post", [delta])
	_lib._dispatch_deferred("btr-states-callback", [delta])

func Mixer(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-mixer-pre", [delta])
	var _repl = _lib._get_hooks("btr-mixer")
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
	_lib._dispatch("btr-mixer-post", [delta])
	_lib._dispatch_deferred("btr-mixer-callback", [delta])

func Drive(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-drive-pre", [delta])
	var _repl = _lib._get_hooks("btr-drive")
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
	_lib._dispatch("btr-drive-post", [delta])
	_lib._dispatch_deferred("btr-drive-callback", [delta])

func Tires(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-tires-pre", [delta])
	var _repl = _lib._get_hooks("btr-tires")
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
	_lib._dispatch("btr-tires-post", [delta])
	_lib._dispatch_deferred("btr-tires-callback", [delta])

func Suspension(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-suspension-pre", [delta])
	var _repl = _lib._get_hooks("btr-suspension")
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
	_lib._dispatch("btr-suspension-post", [delta])
	_lib._dispatch_deferred("btr-suspension-callback", [delta])

func Wobble(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-wobble-pre", [delta])
	var _repl = _lib._get_hooks("btr-wobble")
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
	_lib._dispatch("btr-wobble-post", [delta])
	_lib._dispatch_deferred("btr-wobble-callback", [delta])

func Turret(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-turret-pre", [delta])
	var _repl = _lib._get_hooks("btr-turret")
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
	_lib._dispatch("btr-turret-post", [delta])
	_lib._dispatch_deferred("btr-turret-callback", [delta])

func Sensor(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-sensor-pre", [delta])
	var _repl = _lib._get_hooks("btr-sensor")
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
	_lib._dispatch("btr-sensor-post", [delta])
	_lib._dispatch_deferred("btr-sensor-callback", [delta])

func LOSCheck(target: Vector3):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(target)
		return
	_lib._dispatch("btr-loscheck-pre", [target])
	var _repl = _lib._get_hooks("btr-loscheck")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([target])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(target)
	else:
		super(target)
	_lib._dispatch("btr-loscheck-post", [target])
	_lib._dispatch_deferred("btr-loscheck-callback", [target])

func Fire(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-fire-pre", [delta])
	var _repl = _lib._get_hooks("btr-fire")
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
	_lib._dispatch("btr-fire-post", [delta])
	_lib._dispatch_deferred("btr-fire-callback", [delta])

func Raycast():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("btr-raycast-pre", [])
	var _repl = _lib._get_hooks("btr-raycast")
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
	_lib._dispatch("btr-raycast-post", [])
	_lib._dispatch_deferred("btr-raycast-callback", [])

func Accuracy():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("btr-accuracy-pre", [])
	var _result
	var _repl = _lib._get_hooks("btr-accuracy")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super()
	else:
		_result = super()
	_lib._dispatch("btr-accuracy-post", [])
	_lib._dispatch_deferred("btr-accuracy-callback", [])
	return _result

func Hit(hitCollider, hitPoint, hitNormal, hitSurface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(hitCollider, hitPoint, hitNormal, hitSurface)
		return
	_lib._dispatch("btr-hit-pre", [hitCollider, hitPoint, hitNormal, hitSurface])
	var _repl = _lib._get_hooks("btr-hit")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([hitCollider, hitPoint, hitNormal, hitSurface])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(hitCollider, hitPoint, hitNormal, hitSurface)
	else:
		super(hitCollider, hitPoint, hitNormal, hitSurface)
	_lib._dispatch("btr-hit-post", [hitCollider, hitPoint, hitNormal, hitSurface])
	_lib._dispatch_deferred("btr-hit-callback", [hitCollider, hitPoint, hitNormal, hitSurface])

func Muzzle():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("btr-muzzle-pre", [])
	var _repl = _lib._get_hooks("btr-muzzle")
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
	_lib._dispatch("btr-muzzle-post", [])
	_lib._dispatch_deferred("btr-muzzle-callback", [])

func Smoke():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("btr-smoke-pre", [])
	var _repl = _lib._get_hooks("btr-smoke")
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
	_lib._dispatch("btr-smoke-post", [])
	_lib._dispatch_deferred("btr-smoke-callback", [])

func Audio(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("btr-audio-pre", [delta])
	var _repl = _lib._get_hooks("btr-audio")
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
	_lib._dispatch("btr-audio-post", [delta])
	_lib._dispatch_deferred("btr-audio-callback", [delta])

func PlayFire():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("btr-playfire-pre", [])
	var _repl = _lib._get_hooks("btr-playfire")
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
	_lib._dispatch("btr-playfire-post", [])
	_lib._dispatch_deferred("btr-playfire-callback", [])

func PlayTail():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("btr-playtail-pre", [])
	var _repl = _lib._get_hooks("btr-playtail")
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
	_lib._dispatch("btr-playtail-post", [])
	_lib._dispatch_deferred("btr-playtail-callback", [])

func PlayCrack():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("btr-playcrack-pre", [])
	var _repl = _lib._get_hooks("btr-playcrack")
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
	_lib._dispatch("btr-playcrack-post", [])
	_lib._dispatch_deferred("btr-playcrack-callback", [])

func PlayFlyby():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("btr-playflyby-pre", [])
	var _repl = _lib._get_hooks("btr-playflyby")
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
	_lib._dispatch("btr-playflyby-post", [])
	_lib._dispatch_deferred("btr-playflyby-callback", [])

func PlaySmokeLaunch():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("btr-playsmokelaunch-pre", [])
	var _repl = _lib._get_hooks("btr-playsmokelaunch")
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
	_lib._dispatch("btr-playsmokelaunch-post", [])
	_lib._dispatch_deferred("btr-playsmokelaunch-callback", [])

func PlaySmokeExplode():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("btr-playsmokeexplode-pre", [])
	var _repl = _lib._get_hooks("btr-playsmokeexplode")
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
	_lib._dispatch("btr-playsmokeexplode-post", [])
	_lib._dispatch_deferred("btr-playsmokeexplode-callback", [])

