extends "res://Scripts/WeaponRig.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._dispatch("weaponrig-_ready-pre", [])
	var _repl = _lib._get_hooks("weaponrig-_ready")
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
	_lib._dispatch("weaponrig-_ready-post", [])
	_lib._dispatch_deferred("weaponrig-_ready-callback", [])

func _input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._dispatch("weaponrig-_input-pre", [event])
	var _repl = _lib._get_hooks("weaponrig-_input")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([event])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(event)
	else:
		super(event)
	_lib._dispatch("weaponrig-_input-post", [event])
	_lib._dispatch_deferred("weaponrig-_input-callback", [event])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("weaponrig-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("weaponrig-_physics_process")
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
	_lib._dispatch("weaponrig-_physics_process-post", [delta])
	_lib._dispatch_deferred("weaponrig-_physics_process-callback", [delta])

func _process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("weaponrig-_process-pre", [delta])
	var _repl = _lib._get_hooks("weaponrig-_process")
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
	_lib._dispatch("weaponrig-_process-post", [delta])
	_lib._dispatch_deferred("weaponrig-_process-callback", [delta])

func ADS(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("weaponrig-ads-pre", [delta])
	var _repl = _lib._get_hooks("weaponrig-ads")
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
	_lib._dispatch("weaponrig-ads-post", [delta])
	_lib._dispatch_deferred("weaponrig-ads-callback", [delta])

func FireTimer(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("weaponrig-firetimer-pre", [delta])
	var _repl = _lib._get_hooks("weaponrig-firetimer")
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
	_lib._dispatch("weaponrig-firetimer-post", [delta])
	_lib._dispatch_deferred("weaponrig-firetimer-callback", [delta])

func Firemode():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-firemode-pre", [])
	var _repl = _lib._get_hooks("weaponrig-firemode")
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
	_lib._dispatch("weaponrig-firemode-post", [])
	_lib._dispatch_deferred("weaponrig-firemode-callback", [])

func FireInput():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-fireinput-pre", [])
	var _repl = _lib._get_hooks("weaponrig-fireinput")
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
	_lib._dispatch("weaponrig-fireinput-post", [])
	_lib._dispatch_deferred("weaponrig-fireinput-callback", [])

func FireEvent():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-fireevent-pre", [])
	var _repl = _lib._get_hooks("weaponrig-fireevent")
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
	_lib._dispatch("weaponrig-fireevent-post", [])
	_lib._dispatch_deferred("weaponrig-fireevent-callback", [])

func Malfunction():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("weaponrig-malfunction-pre", [])
	var _result
	var _repl = _lib._get_hooks("weaponrig-malfunction")
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
	_lib._dispatch("weaponrig-malfunction-post", [])
	_lib._dispatch_deferred("weaponrig-malfunction-callback", [])
	return _result

func FireImpulse(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("weaponrig-fireimpulse-pre", [delta])
	var _repl = _lib._get_hooks("weaponrig-fireimpulse")
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
	_lib._dispatch("weaponrig-fireimpulse-post", [delta])
	_lib._dispatch_deferred("weaponrig-fireimpulse-callback", [delta])

func Raycast(spread: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(spread)
		return
	_lib._dispatch("weaponrig-raycast-pre", [spread])
	var _repl = _lib._get_hooks("weaponrig-raycast")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([spread])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(spread)
	else:
		super(spread)
	_lib._dispatch("weaponrig-raycast-post", [spread])
	_lib._dispatch_deferred("weaponrig-raycast-callback", [spread])

func Reload():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-reload-pre", [])
	var _repl = _lib._get_hooks("weaponrig-reload")
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
	_lib._dispatch("weaponrig-reload-post", [])
	_lib._dispatch_deferred("weaponrig-reload-callback", [])

func Magazine(attach: bool, animate: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(attach, animate)
		return
	_lib._dispatch("weaponrig-magazine-pre", [attach, animate])
	var _repl = _lib._get_hooks("weaponrig-magazine")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([attach, animate])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(attach, animate)
	else:
		super(attach, animate)
	_lib._dispatch("weaponrig-magazine-post", [attach, animate])
	_lib._dispatch_deferred("weaponrig-magazine-callback", [attach, animate])

func Insert():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-insert-pre", [])
	var _repl = _lib._get_hooks("weaponrig-insert")
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
	_lib._dispatch("weaponrig-insert-post", [])
	_lib._dispatch_deferred("weaponrig-insert-callback", [])

func AmmoCheck():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-ammocheck-pre", [])
	var _repl = _lib._get_hooks("weaponrig-ammocheck")
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
	_lib._dispatch("weaponrig-ammocheck-post", [])
	_lib._dispatch_deferred("weaponrig-ammocheck-callback", [])

func Selector(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("weaponrig-selector-pre", [delta])
	var _repl = _lib._get_hooks("weaponrig-selector")
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
	_lib._dispatch("weaponrig-selector-post", [delta])
	_lib._dispatch_deferred("weaponrig-selector-callback", [delta])

func Slide(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("weaponrig-slide-pre", [delta])
	var _repl = _lib._get_hooks("weaponrig-slide")
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
	_lib._dispatch("weaponrig-slide-post", [delta])
	_lib._dispatch_deferred("weaponrig-slide-callback", [delta])

func Hammer(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("weaponrig-hammer-pre", [delta])
	var _repl = _lib._get_hooks("weaponrig-hammer")
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
	_lib._dispatch("weaponrig-hammer-post", [delta])
	_lib._dispatch_deferred("weaponrig-hammer-callback", [delta])

func HitEffect(hitCollider, hitPoint, hitNormal, hitSurface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(hitCollider, hitPoint, hitNormal, hitSurface)
		return
	_lib._dispatch("weaponrig-hiteffect-pre", [hitCollider, hitPoint, hitNormal, hitSurface])
	var _repl = _lib._get_hooks("weaponrig-hiteffect")
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
	_lib._dispatch("weaponrig-hiteffect-post", [hitCollider, hitPoint, hitNormal, hitSurface])
	_lib._dispatch_deferred("weaponrig-hiteffect-callback", [hitCollider, hitPoint, hitNormal, hitSurface])

func BloodEffect(hitCollider, hitPoint, hitNormal):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(hitCollider, hitPoint, hitNormal)
		return
	_lib._dispatch("weaponrig-bloodeffect-pre", [hitCollider, hitPoint, hitNormal])
	var _repl = _lib._get_hooks("weaponrig-bloodeffect")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([hitCollider, hitPoint, hitNormal])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(hitCollider, hitPoint, hitNormal)
	else:
		super(hitCollider, hitPoint, hitNormal)
	_lib._dispatch("weaponrig-bloodeffect-post", [hitCollider, hitPoint, hitNormal])
	_lib._dispatch_deferred("weaponrig-bloodeffect-callback", [hitCollider, hitPoint, hitNormal])

func MuzzleEffect():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-muzzleeffect-pre", [])
	var _repl = _lib._get_hooks("weaponrig-muzzleeffect")
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
	_lib._dispatch("weaponrig-muzzleeffect-post", [])
	_lib._dispatch_deferred("weaponrig-muzzleeffect-callback", [])

func CasingEject():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-casingeject-pre", [])
	var _repl = _lib._get_hooks("weaponrig-casingeject")
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
	_lib._dispatch("weaponrig-casingeject-post", [])
	_lib._dispatch_deferred("weaponrig-casingeject-callback", [])

func HammerLock(state: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._dispatch("weaponrig-hammerlock-pre", [state])
	var _repl = _lib._get_hooks("weaponrig-hammerlock")
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
	_lib._dispatch("weaponrig-hammerlock-post", [state])
	_lib._dispatch_deferred("weaponrig-hammerlock-callback", [state])

func SlideLock(state: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._dispatch("weaponrig-slidelock-pre", [state])
	var _repl = _lib._get_hooks("weaponrig-slidelock")
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
	_lib._dispatch("weaponrig-slidelock-post", [state])
	_lib._dispatch_deferred("weaponrig-slidelock-callback", [state])

func UpdateMuzzlePosition():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-updatemuzzleposition-pre", [])
	var _repl = _lib._get_hooks("weaponrig-updatemuzzleposition")
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
	_lib._dispatch("weaponrig-updatemuzzleposition-post", [])
	_lib._dispatch_deferred("weaponrig-updatemuzzleposition-callback", [])

func UpdateAimOffset():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-updateaimoffset-pre", [])
	var _repl = _lib._get_hooks("weaponrig-updateaimoffset")
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
	_lib._dispatch("weaponrig-updateaimoffset-post", [])
	_lib._dispatch_deferred("weaponrig-updateaimoffset-callback", [])

func ResetOpticPosition():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-resetopticposition-pre", [])
	var _repl = _lib._get_hooks("weaponrig-resetopticposition")
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
	_lib._dispatch("weaponrig-resetopticposition-post", [])
	_lib._dispatch_deferred("weaponrig-resetopticposition-callback", [])

func UpdateBullets():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-updatebullets-pre", [])
	var _repl = _lib._get_hooks("weaponrig-updatebullets")
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
	_lib._dispatch("weaponrig-updatebullets-post", [])
	_lib._dispatch_deferred("weaponrig-updatebullets-callback", [])

func UpdateBulletsDetach(amount):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(amount)
		return
	_lib._dispatch("weaponrig-updatebulletsdetach-pre", [amount])
	var _repl = _lib._get_hooks("weaponrig-updatebulletsdetach")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([amount])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(amount)
	else:
		super(amount)
	_lib._dispatch("weaponrig-updatebulletsdetach-post", [amount])
	_lib._dispatch_deferred("weaponrig-updatebulletsdetach-callback", [amount])

func UpdateHUD():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-updatehud-pre", [])
	var _repl = _lib._get_hooks("weaponrig-updatehud")
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
	_lib._dispatch("weaponrig-updatehud-post", [])
	_lib._dispatch_deferred("weaponrig-updatehud-callback", [])

func GetAnimationLength():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("weaponrig-getanimationlength-pre", [])
	var _result
	var _repl = _lib._get_hooks("weaponrig-getanimationlength")
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
	_lib._dispatch("weaponrig-getanimationlength-post", [])
	_lib._dispatch_deferred("weaponrig-getanimationlength-callback", [])
	return _result

func PlayFire():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playfire-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playfire")
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
	_lib._dispatch("weaponrig-playfire-post", [])
	_lib._dispatch_deferred("weaponrig-playfire-callback", [])

func PlayTail():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playtail-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playtail")
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
	_lib._dispatch("weaponrig-playtail-post", [])
	_lib._dispatch_deferred("weaponrig-playtail-callback", [])

func PlayCharge():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playcharge-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playcharge")
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
	_lib._dispatch("weaponrig-playcharge-post", [])
	_lib._dispatch_deferred("weaponrig-playcharge-callback", [])

func PlayMagazineAttachEmpty():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playmagazineattachempty-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playmagazineattachempty")
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
	_lib._dispatch("weaponrig-playmagazineattachempty-post", [])
	_lib._dispatch_deferred("weaponrig-playmagazineattachempty-callback", [])

func PlayMagazineAttachTactical():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playmagazineattachtactical-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playmagazineattachtactical")
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
	_lib._dispatch("weaponrig-playmagazineattachtactical-post", [])
	_lib._dispatch_deferred("weaponrig-playmagazineattachtactical-callback", [])

func PlayMagazineDetach():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playmagazinedetach-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playmagazinedetach")
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
	_lib._dispatch("weaponrig-playmagazinedetach-post", [])
	_lib._dispatch_deferred("weaponrig-playmagazinedetach-callback", [])

func PlayAmmoCheck():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playammocheck-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playammocheck")
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
	_lib._dispatch("weaponrig-playammocheck-post", [])
	_lib._dispatch_deferred("weaponrig-playammocheck-callback", [])

func PlayReloadEmpty():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playreloadempty-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playreloadempty")
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
	_lib._dispatch("weaponrig-playreloadempty-post", [])
	_lib._dispatch_deferred("weaponrig-playreloadempty-callback", [])

func PlayReloadTactical():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playreloadtactical-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playreloadtactical")
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
	_lib._dispatch("weaponrig-playreloadtactical-post", [])
	_lib._dispatch_deferred("weaponrig-playreloadtactical-callback", [])

func PlayInsertStart():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playinsertstart-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playinsertstart")
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
	_lib._dispatch("weaponrig-playinsertstart-post", [])
	_lib._dispatch_deferred("weaponrig-playinsertstart-callback", [])

func PlayInsertEnd():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playinsertend-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playinsertend")
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
	_lib._dispatch("weaponrig-playinsertend-post", [])
	_lib._dispatch_deferred("weaponrig-playinsertend-callback", [])

func PlayInsert():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playinsert-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playinsert")
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
	_lib._dispatch("weaponrig-playinsert-post", [])
	_lib._dispatch_deferred("weaponrig-playinsert-callback", [])

func PlayReload():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playreload-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playreload")
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
	_lib._dispatch("weaponrig-playreload-post", [])
	_lib._dispatch_deferred("weaponrig-playreload-callback", [])

func PlayMalfunction():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playmalfunction-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playmalfunction")
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
	_lib._dispatch("weaponrig-playmalfunction-post", [])
	_lib._dispatch_deferred("weaponrig-playmalfunction-callback", [])

func PlayMalfunctionClear():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playmalfunctionclear-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playmalfunctionclear")
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
	_lib._dispatch("weaponrig-playmalfunctionclear-post", [])
	_lib._dispatch_deferred("weaponrig-playmalfunctionclear-callback", [])

func PlayInspectStart():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playinspectstart-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playinspectstart")
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
	_lib._dispatch("weaponrig-playinspectstart-post", [])
	_lib._dispatch_deferred("weaponrig-playinspectstart-callback", [])

func PlayInspectRotate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playinspectrotate-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playinspectrotate")
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
	_lib._dispatch("weaponrig-playinspectrotate-post", [])
	_lib._dispatch_deferred("weaponrig-playinspectrotate-callback", [])

func PlayInspectEnd():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playinspectend-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playinspectend")
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
	_lib._dispatch("weaponrig-playinspectend-post", [])
	_lib._dispatch_deferred("weaponrig-playinspectend-callback", [])

func PlayFiremode():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playfiremode-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playfiremode")
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
	_lib._dispatch("weaponrig-playfiremode-post", [])
	_lib._dispatch_deferred("weaponrig-playfiremode-callback", [])

func PlayRailMove():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playrailmove-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playrailmove")
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
	_lib._dispatch("weaponrig-playrailmove-post", [])
	_lib._dispatch_deferred("weaponrig-playrailmove-callback", [])

func PlayCasingDrop():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("weaponrig-playcasingdrop-pre", [])
	var _repl = _lib._get_hooks("weaponrig-playcasingdrop")
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
	_lib._dispatch("weaponrig-playcasingdrop-post", [])
	_lib._dispatch_deferred("weaponrig-playcasingdrop-callback", [])

