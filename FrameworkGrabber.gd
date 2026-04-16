extends "res://Scripts/Grabber.gd"

func Update(slotData: SlotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("grabber-update-pre", [slotData])
	var _repl = _lib._get_hooks("grabber-update")
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
	_lib._dispatch("grabber-update-post", [slotData])
	_lib._dispatch_deferred("grabber-update-callback", [slotData])

func Swap(slotData: SlotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("grabber-swap-pre", [slotData])
	var _repl = _lib._get_hooks("grabber-swap")
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
	_lib._dispatch("grabber-swap-post", [slotData])
	_lib._dispatch_deferred("grabber-swap-callback", [slotData])

func Reset():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grabber-reset-pre", [])
	var _repl = _lib._get_hooks("grabber-reset")
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
	_lib._dispatch("grabber-reset-post", [])
	_lib._dispatch_deferred("grabber-reset-callback", [])

