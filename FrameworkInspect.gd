extends "res://Scripts/Inspect.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._dispatch("inspect-_ready-pre", [])
	var _repl = _lib._get_hooks("inspect-_ready")
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
	_lib._dispatch("inspect-_ready-post", [])
	_lib._dispatch_deferred("inspect-_ready-callback", [])

func ShowWeaponUI():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-showweaponui-pre", [])
	var _repl = _lib._get_hooks("inspect-showweaponui")
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
	_lib._dispatch("inspect-showweaponui-post", [])
	_lib._dispatch_deferred("inspect-showweaponui-callback", [])

func HideWeaponUI():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-hideweaponui-pre", [])
	var _repl = _lib._get_hooks("inspect-hideweaponui")
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
	_lib._dispatch("inspect-hideweaponui-post", [])
	_lib._dispatch_deferred("inspect-hideweaponui-callback", [])

func GetAvailableAttachments():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-getavailableattachments-pre", [])
	var _repl = _lib._get_hooks("inspect-getavailableattachments")
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
	_lib._dispatch("inspect-getavailableattachments-post", [])
	_lib._dispatch_deferred("inspect-getavailableattachments-callback", [])

func GetActiveAttachments():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-getactiveattachments-pre", [])
	var _repl = _lib._get_hooks("inspect-getactiveattachments")
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
	_lib._dispatch("inspect-getactiveattachments-post", [])
	_lib._dispatch_deferred("inspect-getactiveattachments-callback", [])

func ClearAvailableAttachments():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-clearavailableattachments-pre", [])
	var _repl = _lib._get_hooks("inspect-clearavailableattachments")
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
	_lib._dispatch("inspect-clearavailableattachments-post", [])
	_lib._dispatch_deferred("inspect-clearavailableattachments-callback", [])

func ClearActiveAttachments():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-clearactiveattachments-pre", [])
	var _repl = _lib._get_hooks("inspect-clearactiveattachments")
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
	_lib._dispatch("inspect-clearactiveattachments-post", [])
	_lib._dispatch_deferred("inspect-clearactiveattachments-callback", [])

func GetCurrentWeaponRig():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-getcurrentweaponrig-pre", [])
	var _repl = _lib._get_hooks("inspect-getcurrentweaponrig")
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
	_lib._dispatch("inspect-getcurrentweaponrig-post", [])
	_lib._dispatch_deferred("inspect-getcurrentweaponrig-callback", [])

func GetWeaponStats():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-getweaponstats-pre", [])
	var _repl = _lib._get_hooks("inspect-getweaponstats")
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
	_lib._dispatch("inspect-getweaponstats-post", [])
	_lib._dispatch_deferred("inspect-getweaponstats-callback", [])

func GetAmmoCount():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-getammocount-pre", [])
	var _repl = _lib._get_hooks("inspect-getammocount")
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
	_lib._dispatch("inspect-getammocount-post", [])
	_lib._dispatch_deferred("inspect-getammocount-callback", [])

func ActivateAttachment(slotData: SlotData, index: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData, index)
		return
	_lib._dispatch("inspect-activateattachment-pre", [slotData, index])
	var _repl = _lib._get_hooks("inspect-activateattachment")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData, index])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData, index)
	else:
		super(slotData, index)
	_lib._dispatch("inspect-activateattachment-post", [slotData, index])
	_lib._dispatch_deferred("inspect-activateattachment-callback", [slotData, index])

func DeactivateAttachment(slotData: SlotData, index: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData, index)
		return
	_lib._dispatch("inspect-deactivateattachment-pre", [slotData, index])
	var _repl = _lib._get_hooks("inspect-deactivateattachment")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData, index])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData, index)
	else:
		super(slotData, index)
	_lib._dispatch("inspect-deactivateattachment-post", [slotData, index])
	_lib._dispatch_deferred("inspect-deactivateattachment-callback", [slotData, index])

func ResetActiveAttachment(slotData: SlotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("inspect-resetactiveattachment-pre", [slotData])
	var _repl = _lib._get_hooks("inspect-resetactiveattachment")
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
	_lib._dispatch("inspect-resetactiveattachment-post", [slotData])
	_lib._dispatch_deferred("inspect-resetactiveattachment-callback", [slotData])

func AttachAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inspect-attachaudio-pre", [])
	var _repl = _lib._get_hooks("inspect-attachaudio")
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
	_lib._dispatch("inspect-attachaudio-post", [])
	_lib._dispatch_deferred("inspect-attachaudio-callback", [])

