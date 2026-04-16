extends "res://Scripts/Tooltip.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("tooltip-_ready-pre", [])
	var _repl = _lib._get_hooks("tooltip-_ready")
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
	_lib._dispatch("tooltip-_ready-post", [])
	_lib._dispatch_deferred("tooltip-_ready-callback", [])

func Reset():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("tooltip-reset-pre", [])
	var _repl = _lib._get_hooks("tooltip-reset")
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
	_lib._dispatch("tooltip-reset-post", [])
	_lib._dispatch_deferred("tooltip-reset-callback", [])

func Update(item: Item):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(item)
		return
	_lib._dispatch("tooltip-update-pre", [item])
	var _repl = _lib._get_hooks("tooltip-update")
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
	_lib._dispatch("tooltip-update-post", [item])
	_lib._dispatch_deferred("tooltip-update-callback", [item])

func CreateNestedString(slotData: SlotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(slotData)
	_lib._dispatch("tooltip-createnestedstring-pre", [slotData])
	var _result
	var _repl = _lib._get_hooks("tooltip-createnestedstring")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(slotData)
	else:
		_result = super(slotData)
	_lib._dispatch("tooltip-createnestedstring-post", [slotData])
	_lib._dispatch_deferred("tooltip-createnestedstring-callback", [slotData])
	return _result

func CreateCompatibleString(slotData: SlotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(slotData)
	_lib._dispatch("tooltip-createcompatiblestring-pre", [slotData])
	var _result
	var _repl = _lib._get_hooks("tooltip-createcompatiblestring")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(slotData)
	else:
		_result = super(slotData)
	_lib._dispatch("tooltip-createcompatiblestring-post", [slotData])
	_lib._dispatch_deferred("tooltip-createcompatiblestring-callback", [slotData])
	return _result

func CreateEquipmentString(slotData: SlotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(slotData)
	_lib._dispatch("tooltip-createequipmentstring-pre", [slotData])
	var _result
	var _repl = _lib._get_hooks("tooltip-createequipmentstring")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(slotData)
	else:
		_result = super(slotData)
	_lib._dispatch("tooltip-createequipmentstring-post", [slotData])
	_lib._dispatch_deferred("tooltip-createequipmentstring-callback", [slotData])
	return _result

func Info(hoverInfo):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(hoverInfo)
		return
	_lib._dispatch("tooltip-info-pre", [hoverInfo])
	var _repl = _lib._get_hooks("tooltip-info")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([hoverInfo])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(hoverInfo)
	else:
		super(hoverInfo)
	_lib._dispatch("tooltip-info-post", [hoverInfo])
	_lib._dispatch_deferred("tooltip-info-callback", [hoverInfo])

