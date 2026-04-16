extends "res://Scripts/Context.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("context-_ready-pre", [])
	var _repl = _lib._get_hooks("context-_ready")
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
	_lib._dispatch("context-_ready-post", [])
	_lib._dispatch_deferred("context-_ready-callback", [])

func _physics_process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._caller = self
	_lib._dispatch("context-_physics_process-pre", [_delta])
	var _repl = _lib._get_hooks("context-_physics_process")
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
	_lib._dispatch("context-_physics_process-post", [_delta])
	_lib._dispatch_deferred("context-_physics_process-callback", [_delta])

func Update(slotData: SlotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._caller = self
	_lib._dispatch("context-update-pre", [slotData])
	var _repl = _lib._get_hooks("context-update")
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
	_lib._dispatch("context-update-post", [slotData])
	_lib._dispatch_deferred("context-update-callback", [slotData])

func _on_use_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_use_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_use_pressed")
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
	_lib._dispatch("context-_on_use_pressed-post", [])
	_lib._dispatch_deferred("context-_on_use_pressed-callback", [])

func _on_unload_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_unload_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_unload_pressed")
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
	_lib._dispatch("context-_on_unload_pressed-post", [])
	_lib._dispatch_deferred("context-_on_unload_pressed-callback", [])

func _on_take_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_take_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_take_pressed")
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
	_lib._dispatch("context-_on_take_pressed-post", [])
	_lib._dispatch_deferred("context-_on_take_pressed-callback", [])

func _on_split_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_split_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_split_pressed")
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
	_lib._dispatch("context-_on_split_pressed-post", [])
	_lib._dispatch_deferred("context-_on_split_pressed-callback", [])

func _on_equip_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_equip_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_equip_pressed")
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
	_lib._dispatch("context-_on_equip_pressed-post", [])
	_lib._dispatch_deferred("context-_on_equip_pressed-callback", [])

func _on_unequip_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_unequip_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_unequip_pressed")
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
	_lib._dispatch("context-_on_unequip_pressed-post", [])
	_lib._dispatch_deferred("context-_on_unequip_pressed-callback", [])

func _on_drop_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_drop_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_drop_pressed")
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
	_lib._dispatch("context-_on_drop_pressed-post", [])
	_lib._dispatch_deferred("context-_on_drop_pressed-callback", [])

func _on_place_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_place_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_place_pressed")
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
	_lib._dispatch("context-_on_place_pressed-post", [])
	_lib._dispatch_deferred("context-_on_place_pressed-callback", [])

func _on_destroy_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_destroy_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_destroy_pressed")
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
	_lib._dispatch("context-_on_destroy_pressed-post", [])
	_lib._dispatch_deferred("context-_on_destroy_pressed-callback", [])

func _on_sleep_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_sleep_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_sleep_pressed")
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
	_lib._dispatch("context-_on_sleep_pressed-post", [])
	_lib._dispatch_deferred("context-_on_sleep_pressed-callback", [])

func _on_transfer_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_transfer_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_transfer_pressed")
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
	_lib._dispatch("context-_on_transfer_pressed-post", [])
	_lib._dispatch_deferred("context-_on_transfer_pressed-callback", [])

func _on_remove_0_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_remove_0_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_remove_0_pressed")
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
	_lib._dispatch("context-_on_remove_0_pressed-post", [])
	_lib._dispatch_deferred("context-_on_remove_0_pressed-callback", [])

func _on_remove_1_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_remove_1_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_remove_1_pressed")
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
	_lib._dispatch("context-_on_remove_1_pressed-post", [])
	_lib._dispatch_deferred("context-_on_remove_1_pressed-callback", [])

func _on_remove_2_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_remove_2_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_remove_2_pressed")
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
	_lib._dispatch("context-_on_remove_2_pressed-post", [])
	_lib._dispatch_deferred("context-_on_remove_2_pressed-callback", [])

func _on_remove_3_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-_on_remove_3_pressed-pre", [])
	var _repl = _lib._get_hooks("context-_on_remove_3_pressed")
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
	_lib._dispatch("context-_on_remove_3_pressed-post", [])
	_lib._dispatch_deferred("context-_on_remove_3_pressed-callback", [])

func GetHover():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-gethover-pre", [])
	var _repl = _lib._get_hooks("context-gethover")
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
	_lib._dispatch("context-gethover-post", [])
	_lib._dispatch_deferred("context-gethover-callback", [])

func CalculateDistance():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("context-calculatedistance-pre", [])
	var _repl = _lib._get_hooks("context-calculatedistance")
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
	_lib._dispatch("context-calculatedistance-post", [])
	_lib._dispatch_deferred("context-calculatedistance-callback", [])

