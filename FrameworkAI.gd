extends "res://Scripts/AI.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._dispatch("ai-_ready-pre", [])
	var _repl = _lib._get_hooks("ai-_ready")
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
	_lib._dispatch("ai-_ready-post", [])
	_lib._dispatch_deferred("ai-_ready-callback", [])

func Initialize():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-initialize-pre", [])
	var _repl = _lib._get_hooks("ai-initialize")
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
	_lib._dispatch("ai-initialize-post", [])
	_lib._dispatch_deferred("ai-initialize-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("ai-_physics_process")
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
	_lib._dispatch("ai-_physics_process-post", [delta])
	_lib._dispatch_deferred("ai-_physics_process-callback", [delta])

func ActivateWanderer():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-activatewanderer-pre", [])
	var _repl = _lib._get_hooks("ai-activatewanderer")
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
	_lib._dispatch("ai-activatewanderer-post", [])
	_lib._dispatch_deferred("ai-activatewanderer-callback", [])

func ActivateHider():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-activatehider-pre", [])
	var _repl = _lib._get_hooks("ai-activatehider")
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
	_lib._dispatch("ai-activatehider-post", [])
	_lib._dispatch_deferred("ai-activatehider-callback", [])

func ActivateGuard():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-activateguard-pre", [])
	var _repl = _lib._get_hooks("ai-activateguard")
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
	_lib._dispatch("ai-activateguard-post", [])
	_lib._dispatch_deferred("ai-activateguard-callback", [])

func ActivateMinion():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-activateminion-pre", [])
	var _repl = _lib._get_hooks("ai-activateminion")
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
	_lib._dispatch("ai-activateminion-post", [])
	_lib._dispatch_deferred("ai-activateminion-callback", [])

func ActivateBoss():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-activateboss-pre", [])
	var _repl = _lib._get_hooks("ai-activateboss")
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
	_lib._dispatch("ai-activateboss-post", [])
	_lib._dispatch_deferred("ai-activateboss-callback", [])

func Activate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-activate-pre", [])
	var _repl = _lib._get_hooks("ai-activate")
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
	_lib._dispatch("ai-activate-post", [])
	_lib._dispatch_deferred("ai-activate-callback", [])

func Pause():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-pause-pre", [])
	var _repl = _lib._get_hooks("ai-pause")
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
	_lib._dispatch("ai-pause-post", [])
	_lib._dispatch_deferred("ai-pause-callback", [])

func Animate(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-animate-pre", [delta])
	var _repl = _lib._get_hooks("ai-animate")
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
	_lib._dispatch("ai-animate-post", [delta])
	_lib._dispatch_deferred("ai-animate-callback", [delta])

func SelectWeapon():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-selectweapon-pre", [])
	var _repl = _lib._get_hooks("ai-selectweapon")
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
	_lib._dispatch("ai-selectweapon-post", [])
	_lib._dispatch_deferred("ai-selectweapon-callback", [])

func SelectBackpack():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-selectbackpack-pre", [])
	var _repl = _lib._get_hooks("ai-selectbackpack")
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
	_lib._dispatch("ai-selectbackpack-post", [])
	_lib._dispatch_deferred("ai-selectbackpack-callback", [])

func SelectClothing():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-selectclothing-pre", [])
	var _repl = _lib._get_hooks("ai-selectclothing")
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
	_lib._dispatch("ai-selectclothing-post", [])
	_lib._dispatch_deferred("ai-selectclothing-callback", [])

func DeactivateEquipment():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-deactivateequipment-pre", [])
	var _repl = _lib._get_hooks("ai-deactivateequipment")
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
	_lib._dispatch("ai-deactivateequipment-post", [])
	_lib._dispatch_deferred("ai-deactivateequipment-callback", [])

func NearbyPoints(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-nearbypoints-pre", [delta])
	var _repl = _lib._get_hooks("ai-nearbypoints")
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
	_lib._dispatch("ai-nearbypoints-post", [delta])
	_lib._dispatch_deferred("ai-nearbypoints-callback", [delta])

func Parameters(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-parameters-pre", [delta])
	var _repl = _lib._get_hooks("ai-parameters")
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
	_lib._dispatch("ai-parameters-post", [delta])
	_lib._dispatch_deferred("ai-parameters-callback", [delta])

func Sensor(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-sensor-pre", [delta])
	var _repl = _lib._get_hooks("ai-sensor")
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
	_lib._dispatch("ai-sensor-post", [delta])
	_lib._dispatch_deferred("ai-sensor-callback", [delta])

func LOSCheck(target: Vector3):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(target)
		return
	_lib._dispatch("ai-loscheck-pre", [target])
	var _repl = _lib._get_hooks("ai-loscheck")
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
	_lib._dispatch("ai-loscheck-post", [target])
	_lib._dispatch_deferred("ai-loscheck-callback", [target])

func Hearing():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-hearing-pre", [])
	var _repl = _lib._get_hooks("ai-hearing")
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
	_lib._dispatch("ai-hearing-post", [])
	_lib._dispatch_deferred("ai-hearing-callback", [])

func FireDetection(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-firedetection-pre", [delta])
	var _repl = _lib._get_hooks("ai-firedetection")
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
	_lib._dispatch("ai-firedetection-post", [delta])
	_lib._dispatch_deferred("ai-firedetection-callback", [delta])

func Interactor(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-interactor-pre", [delta])
	var _repl = _lib._get_hooks("ai-interactor")
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
	_lib._dispatch("ai-interactor-post", [delta])
	_lib._dispatch_deferred("ai-interactor-callback", [delta])

func Movement(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-movement-pre", [delta])
	var _repl = _lib._get_hooks("ai-movement")
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
	_lib._dispatch("ai-movement-post", [delta])
	_lib._dispatch_deferred("ai-movement-callback", [delta])

func Rotation(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-rotation-pre", [delta])
	var _repl = _lib._get_hooks("ai-rotation")
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
	_lib._dispatch("ai-rotation-post", [delta])
	_lib._dispatch_deferred("ai-rotation-callback", [delta])

func Poles():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-poles-pre", [])
	var _repl = _lib._get_hooks("ai-poles")
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
	_lib._dispatch("ai-poles-post", [])
	_lib._dispatch_deferred("ai-poles-callback", [])

func Spine(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-spine-pre", [delta])
	var _repl = _lib._get_hooks("ai-spine")
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
	_lib._dispatch("ai-spine-post", [delta])
	_lib._dispatch_deferred("ai-spine-callback", [delta])

func Aim(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-aim-pre", [delta])
	var _repl = _lib._get_hooks("ai-aim")
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
	_lib._dispatch("ai-aim-post", [delta])
	_lib._dispatch_deferred("ai-aim-callback", [delta])

func ChangeState(state):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._dispatch("ai-changestate-pre", [state])
	var _repl = _lib._get_hooks("ai-changestate")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(state)
	else:
		super(state)
	_lib._dispatch("ai-changestate-post", [state])
	_lib._dispatch_deferred("ai-changestate-callback", [state])

func States(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-states-pre", [delta])
	var _repl = _lib._get_hooks("ai-states")
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
	_lib._dispatch("ai-states-post", [delta])
	_lib._dispatch_deferred("ai-states-callback", [delta])

func Decision():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-decision-pre", [])
	var _repl = _lib._get_hooks("ai-decision")
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
	_lib._dispatch("ai-decision-post", [])
	_lib._dispatch_deferred("ai-decision-callback", [])

func Guard(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-guard-pre", [delta])
	var _repl = _lib._get_hooks("ai-guard")
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
	_lib._dispatch("ai-guard-post", [delta])
	_lib._dispatch_deferred("ai-guard-callback", [delta])

func Patrol(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("ai-patrol-pre", [_delta])
	var _repl = _lib._get_hooks("ai-patrol")
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
	_lib._dispatch("ai-patrol-post", [_delta])
	_lib._dispatch_deferred("ai-patrol-callback", [_delta])

func Defend(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-defend-pre", [delta])
	var _repl = _lib._get_hooks("ai-defend")
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
	_lib._dispatch("ai-defend-post", [delta])
	_lib._dispatch_deferred("ai-defend-callback", [delta])

func Ambush(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-ambush-pre", [delta])
	var _repl = _lib._get_hooks("ai-ambush")
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
	_lib._dispatch("ai-ambush-post", [delta])
	_lib._dispatch_deferred("ai-ambush-callback", [delta])

func Hide(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("ai-hide-pre", [_delta])
	var _repl = _lib._get_hooks("ai-hide")
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
	_lib._dispatch("ai-hide-post", [_delta])
	_lib._dispatch_deferred("ai-hide-callback", [_delta])

func Cover(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("ai-cover-pre", [_delta])
	var _repl = _lib._get_hooks("ai-cover")
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
	_lib._dispatch("ai-cover-post", [_delta])
	_lib._dispatch_deferred("ai-cover-callback", [_delta])

func Vantage(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("ai-vantage-pre", [_delta])
	var _repl = _lib._get_hooks("ai-vantage")
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
	_lib._dispatch("ai-vantage-post", [_delta])
	_lib._dispatch_deferred("ai-vantage-callback", [_delta])

func Wander(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._dispatch("ai-wander-pre", [_delta])
	var _repl = _lib._get_hooks("ai-wander")
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
	_lib._dispatch("ai-wander-post", [_delta])
	_lib._dispatch_deferred("ai-wander-callback", [_delta])

func Combat(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-combat-pre", [delta])
	var _repl = _lib._get_hooks("ai-combat")
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
	_lib._dispatch("ai-combat-post", [delta])
	_lib._dispatch_deferred("ai-combat-callback", [delta])

func Shift(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-shift-pre", [delta])
	var _repl = _lib._get_hooks("ai-shift")
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
	_lib._dispatch("ai-shift-post", [delta])
	_lib._dispatch_deferred("ai-shift-callback", [delta])

func Hunt(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-hunt-pre", [delta])
	var _repl = _lib._get_hooks("ai-hunt")
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
	_lib._dispatch("ai-hunt-post", [delta])
	_lib._dispatch_deferred("ai-hunt-callback", [delta])

func Attack(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-attack-pre", [delta])
	var _repl = _lib._get_hooks("ai-attack")
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
	_lib._dispatch("ai-attack-post", [delta])
	_lib._dispatch_deferred("ai-attack-callback", [delta])

func Return():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-return-pre", [])
	var _repl = _lib._get_hooks("ai-return")
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
	_lib._dispatch("ai-return-post", [])
	_lib._dispatch_deferred("ai-return-callback", [])

func Fire(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-fire-pre", [delta])
	var _repl = _lib._get_hooks("ai-fire")
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
	_lib._dispatch("ai-fire-post", [delta])
	_lib._dispatch_deferred("ai-fire-callback", [delta])

func Selector(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-selector-pre", [delta])
	var _repl = _lib._get_hooks("ai-selector")
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
	_lib._dispatch("ai-selector-post", [delta])
	_lib._dispatch_deferred("ai-selector-callback", [delta])

func Raycast():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-raycast-pre", [])
	var _repl = _lib._get_hooks("ai-raycast")
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
	_lib._dispatch("ai-raycast-post", [])
	_lib._dispatch_deferred("ai-raycast-callback", [])

func FireFrequency():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-firefrequency-pre", [])
	var _repl = _lib._get_hooks("ai-firefrequency")
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
	_lib._dispatch("ai-firefrequency-post", [])
	_lib._dispatch_deferred("ai-firefrequency-callback", [])

func FireAccuracy():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("ai-fireaccuracy-pre", [])
	var _result
	var _repl = _lib._get_hooks("ai-fireaccuracy")
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
	_lib._dispatch("ai-fireaccuracy-post", [])
	_lib._dispatch_deferred("ai-fireaccuracy-callback", [])
	return _result

func BulletDecal(hitCollider, hitPoint, hitNormal, hitSurface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(hitCollider, hitPoint, hitNormal, hitSurface)
		return
	_lib._dispatch("ai-bulletdecal-pre", [hitCollider, hitPoint, hitNormal, hitSurface])
	var _repl = _lib._get_hooks("ai-bulletdecal")
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
	_lib._dispatch("ai-bulletdecal-post", [hitCollider, hitPoint, hitNormal, hitSurface])
	_lib._dispatch_deferred("ai-bulletdecal-callback", [hitCollider, hitPoint, hitNormal, hitSurface])

func MuzzleVFX():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-muzzlevfx-pre", [])
	var _repl = _lib._get_hooks("ai-muzzlevfx")
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
	_lib._dispatch("ai-muzzlevfx-post", [])
	_lib._dispatch_deferred("ai-muzzlevfx-callback", [])

func WeaponDamage(hitbox: String, damage: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(hitbox, damage)
		return
	_lib._dispatch("ai-weapondamage-pre", [hitbox, damage])
	var _repl = _lib._get_hooks("ai-weapondamage")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([hitbox, damage])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(hitbox, damage)
	else:
		super(hitbox, damage)
	_lib._dispatch("ai-weapondamage-post", [hitbox, damage])
	_lib._dispatch_deferred("ai-weapondamage-callback", [hitbox, damage])

func ExplosionDamage(direction):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(direction)
		return
	_lib._dispatch("ai-explosiondamage-pre", [direction])
	var _repl = _lib._get_hooks("ai-explosiondamage")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([direction])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(direction)
	else:
		super(direction)
	_lib._dispatch("ai-explosiondamage-post", [direction])
	_lib._dispatch_deferred("ai-explosiondamage-callback", [direction])

func Death(direction, force):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(direction, force)
		return
	_lib._dispatch("ai-death-pre", [direction, force])
	var _repl = _lib._get_hooks("ai-death")
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
	_lib._dispatch("ai-death-post", [direction, force])
	_lib._dispatch_deferred("ai-death-callback", [direction, force])

func ActivateContainer():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-activatecontainer-pre", [])
	var _repl = _lib._get_hooks("ai-activatecontainer")
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
	_lib._dispatch("ai-activatecontainer-post", [])
	_lib._dispatch_deferred("ai-activatecontainer-callback", [])

func DeactivateContainer():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-deactivatecontainer-pre", [])
	var _repl = _lib._get_hooks("ai-deactivatecontainer")
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
	_lib._dispatch("ai-deactivatecontainer-post", [])
	_lib._dispatch_deferred("ai-deactivatecontainer-callback", [])

func Voices(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("ai-voices-pre", [delta])
	var _repl = _lib._get_hooks("ai-voices")
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
	_lib._dispatch("ai-voices-post", [delta])
	_lib._dispatch_deferred("ai-voices-callback", [delta])

func GetPatrolPoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("ai-getpatrolpoint-pre", [])
	var _result
	var _repl = _lib._get_hooks("ai-getpatrolpoint")
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
	_lib._dispatch("ai-getpatrolpoint-post", [])
	_lib._dispatch_deferred("ai-getpatrolpoint-callback", [])
	return _result

func GetHidePoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("ai-gethidepoint-pre", [])
	var _result
	var _repl = _lib._get_hooks("ai-gethidepoint")
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
	_lib._dispatch("ai-gethidepoint-post", [])
	_lib._dispatch_deferred("ai-gethidepoint-callback", [])
	return _result

func GetVantagePoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("ai-getvantagepoint-pre", [])
	var _result
	var _repl = _lib._get_hooks("ai-getvantagepoint")
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
	_lib._dispatch("ai-getvantagepoint-post", [])
	_lib._dispatch_deferred("ai-getvantagepoint-callback", [])
	return _result

func GetCoverPoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("ai-getcoverpoint-pre", [])
	var _result
	var _repl = _lib._get_hooks("ai-getcoverpoint")
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
	_lib._dispatch("ai-getcoverpoint-post", [])
	_lib._dispatch_deferred("ai-getcoverpoint-callback", [])
	return _result

func GetWanderWaypoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("ai-getwanderwaypoint-pre", [])
	var _result
	var _repl = _lib._get_hooks("ai-getwanderwaypoint")
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
	_lib._dispatch("ai-getwanderwaypoint-post", [])
	_lib._dispatch_deferred("ai-getwanderwaypoint-callback", [])
	return _result

func GetCombatWaypoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("ai-getcombatwaypoint-pre", [])
	var _result
	var _repl = _lib._get_hooks("ai-getcombatwaypoint")
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
	_lib._dispatch("ai-getcombatwaypoint-post", [])
	_lib._dispatch_deferred("ai-getcombatwaypoint-callback", [])
	return _result

func GetShiftWaypoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("ai-getshiftwaypoint-pre", [])
	var _result
	var _repl = _lib._get_hooks("ai-getshiftwaypoint")
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
	_lib._dispatch("ai-getshiftwaypoint-post", [])
	_lib._dispatch_deferred("ai-getshiftwaypoint-callback", [])
	return _result

func GetHuntWaypoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-gethuntwaypoint-pre", [])
	var _repl = _lib._get_hooks("ai-gethuntwaypoint")
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
	_lib._dispatch("ai-gethuntwaypoint-post", [])
	_lib._dispatch_deferred("ai-gethuntwaypoint-callback", [])

func GetAttackWaypoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-getattackwaypoint-pre", [])
	var _repl = _lib._get_hooks("ai-getattackwaypoint")
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
	_lib._dispatch("ai-getattackwaypoint-post", [])
	_lib._dispatch_deferred("ai-getattackwaypoint-callback", [])

func MoveToPoint(origin: Vector3):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(origin)
		return
	_lib._dispatch("ai-movetopoint-pre", [origin])
	var _repl = _lib._get_hooks("ai-movetopoint")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([origin])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(origin)
	else:
		super(origin)
	_lib._dispatch("ai-movetopoint-post", [origin])
	_lib._dispatch_deferred("ai-movetopoint-callback", [origin])

func GetNearestPole():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("ai-getnearestpole-pre", [])
	var _result
	var _repl = _lib._get_hooks("ai-getnearestpole")
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
	_lib._dispatch("ai-getnearestpole-post", [])
	_lib._dispatch_deferred("ai-getnearestpole-callback", [])
	return _result

func ShowGizmos():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-showgizmos-pre", [])
	var _repl = _lib._get_hooks("ai-showgizmos")
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
	_lib._dispatch("ai-showgizmos-post", [])
	_lib._dispatch_deferred("ai-showgizmos-callback", [])

func HideGizmos():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-hidegizmos-pre", [])
	var _repl = _lib._get_hooks("ai-hidegizmos")
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
	_lib._dispatch("ai-hidegizmos-post", [])
	_lib._dispatch_deferred("ai-hidegizmos-callback", [])

func ResetLKL():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-resetlkl-pre", [])
	var _repl = _lib._get_hooks("ai-resetlkl")
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
	_lib._dispatch("ai-resetlkl-post", [])
	_lib._dispatch_deferred("ai-resetlkl-callback", [])

func ResetAnimator():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-resetanimator-pre", [])
	var _repl = _lib._get_hooks("ai-resetanimator")
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
	_lib._dispatch("ai-resetanimator-post", [])
	_lib._dispatch_deferred("ai-resetanimator-callback", [])

func PlayIdle():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-playidle-pre", [])
	var _repl = _lib._get_hooks("ai-playidle")
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
	_lib._dispatch("ai-playidle-post", [])
	_lib._dispatch_deferred("ai-playidle-callback", [])

func PlayCombat():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-playcombat-pre", [])
	var _repl = _lib._get_hooks("ai-playcombat")
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
	_lib._dispatch("ai-playcombat-post", [])
	_lib._dispatch_deferred("ai-playcombat-callback", [])

func PlayDamage():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-playdamage-pre", [])
	var _repl = _lib._get_hooks("ai-playdamage")
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
	_lib._dispatch("ai-playdamage-post", [])
	_lib._dispatch_deferred("ai-playdamage-callback", [])

func PlayDeath():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-playdeath-pre", [])
	var _repl = _lib._get_hooks("ai-playdeath")
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
	_lib._dispatch("ai-playdeath-post", [])
	_lib._dispatch_deferred("ai-playdeath-callback", [])

func PlayFootstep():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-playfootstep-pre", [])
	var _repl = _lib._get_hooks("ai-playfootstep")
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
	_lib._dispatch("ai-playfootstep-post", [])
	_lib._dispatch_deferred("ai-playfootstep-callback", [])

func PlayFire():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-playfire-pre", [])
	var _repl = _lib._get_hooks("ai-playfire")
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
	_lib._dispatch("ai-playfire-post", [])
	_lib._dispatch_deferred("ai-playfire-callback", [])

func PlayTail():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-playtail-pre", [])
	var _repl = _lib._get_hooks("ai-playtail")
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
	_lib._dispatch("ai-playtail-post", [])
	_lib._dispatch_deferred("ai-playtail-callback", [])

func PlayCrack():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-playcrack-pre", [])
	var _repl = _lib._get_hooks("ai-playcrack")
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
	_lib._dispatch("ai-playcrack-post", [])
	_lib._dispatch_deferred("ai-playcrack-callback", [])

func PlayFlyby():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("ai-playflyby-pre", [])
	var _repl = _lib._get_hooks("ai-playflyby")
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
	_lib._dispatch("ai-playflyby-post", [])
	_lib._dispatch_deferred("ai-playflyby-callback", [])

