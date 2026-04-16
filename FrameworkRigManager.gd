extends "res://Scripts/RigManager.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-_ready-pre", [])
	var _repl = _lib._get_hooks("rigmanager-_ready")
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
	_lib._dispatch("rigmanager-_ready-post", [])
	_lib._dispatch_deferred("rigmanager-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("rigmanager-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("rigmanager-_physics_process")
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
	_lib._dispatch("rigmanager-_physics_process-post", [delta])
	_lib._dispatch_deferred("rigmanager-_physics_process-callback", [delta])

func DrawPrimary(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("rigmanager-drawprimary-pre", [slotData])
	var _repl = _lib._get_hooks("rigmanager-drawprimary")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData)
	else:
		super(slotData)
	_lib._dispatch("rigmanager-drawprimary-post", [slotData])
	_lib._dispatch_deferred("rigmanager-drawprimary-callback", [slotData])

func DrawSecondary(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("rigmanager-drawsecondary-pre", [slotData])
	var _repl = _lib._get_hooks("rigmanager-drawsecondary")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData)
	else:
		super(slotData)
	_lib._dispatch("rigmanager-drawsecondary-post", [slotData])
	_lib._dispatch_deferred("rigmanager-drawsecondary-callback", [slotData])

func DrawKnife(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("rigmanager-drawknife-pre", [slotData])
	var _repl = _lib._get_hooks("rigmanager-drawknife")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData)
	else:
		super(slotData)
	_lib._dispatch("rigmanager-drawknife-post", [slotData])
	_lib._dispatch_deferred("rigmanager-drawknife-callback", [slotData])

func DrawGrenade1(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("rigmanager-drawgrenade1-pre", [slotData])
	var _repl = _lib._get_hooks("rigmanager-drawgrenade1")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData)
	else:
		super(slotData)
	_lib._dispatch("rigmanager-drawgrenade1-post", [slotData])
	_lib._dispatch_deferred("rigmanager-drawgrenade1-callback", [slotData])

func DrawGrenade2(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("rigmanager-drawgrenade2-pre", [slotData])
	var _repl = _lib._get_hooks("rigmanager-drawgrenade2")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData)
	else:
		super(slotData)
	_lib._dispatch("rigmanager-drawgrenade2-post", [slotData])
	_lib._dispatch_deferred("rigmanager-drawgrenade2-callback", [slotData])

func MuzzleFlash(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("rigmanager-muzzleflash-pre", [delta])
	var _repl = _lib._get_hooks("rigmanager-muzzleflash")
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
	_lib._dispatch("rigmanager-muzzleflash-post", [delta])
	_lib._dispatch_deferred("rigmanager-muzzleflash-callback", [delta])

func UpdateRig(animate):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(animate)
		return
	_lib._dispatch("rigmanager-updaterig-pre", [animate])
	var _repl = _lib._get_hooks("rigmanager-updaterig")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([animate])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(animate)
	else:
		super(animate)
	_lib._dispatch("rigmanager-updaterig-post", [animate])
	_lib._dispatch_deferred("rigmanager-updaterig-callback", [animate])

func ClearRig():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-clearrig-pre", [])
	var _repl = _lib._get_hooks("rigmanager-clearrig")
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
	_lib._dispatch("rigmanager-clearrig-post", [])
	_lib._dispatch_deferred("rigmanager-clearrig-callback", [])

func Malfunction():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-malfunction-pre", [])
	var _repl = _lib._get_hooks("rigmanager-malfunction")
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
	_lib._dispatch("rigmanager-malfunction-post", [])
	_lib._dispatch_deferred("rigmanager-malfunction-callback", [])

func LoadPrimary():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-loadprimary-pre", [])
	var _repl = _lib._get_hooks("rigmanager-loadprimary")
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
	_lib._dispatch("rigmanager-loadprimary-post", [])
	_lib._dispatch_deferred("rigmanager-loadprimary-callback", [])

func LoadSecondary():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-loadsecondary-pre", [])
	var _repl = _lib._get_hooks("rigmanager-loadsecondary")
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
	_lib._dispatch("rigmanager-loadsecondary-post", [])
	_lib._dispatch_deferred("rigmanager-loadsecondary-callback", [])

func LoadKnife():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-loadknife-pre", [])
	var _repl = _lib._get_hooks("rigmanager-loadknife")
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
	_lib._dispatch("rigmanager-loadknife-post", [])
	_lib._dispatch_deferred("rigmanager-loadknife-callback", [])

func LoadGrenade1():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-loadgrenade1-pre", [])
	var _repl = _lib._get_hooks("rigmanager-loadgrenade1")
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
	_lib._dispatch("rigmanager-loadgrenade1-post", [])
	_lib._dispatch_deferred("rigmanager-loadgrenade1-callback", [])

func LoadGrenade2():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-loadgrenade2-pre", [])
	var _repl = _lib._get_hooks("rigmanager-loadgrenade2")
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
	_lib._dispatch("rigmanager-loadgrenade2-post", [])
	_lib._dispatch_deferred("rigmanager-loadgrenade2-callback", [])

func PlayEquip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-playequip-pre", [])
	var _repl = _lib._get_hooks("rigmanager-playequip")
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
	_lib._dispatch("rigmanager-playequip-post", [])
	_lib._dispatch_deferred("rigmanager-playequip-callback", [])

func PlayUnequip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("rigmanager-playunequip-pre", [])
	var _repl = _lib._get_hooks("rigmanager-playunequip")
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
	_lib._dispatch("rigmanager-playunequip-post", [])
	_lib._dispatch_deferred("rigmanager-playunequip-callback", [])

