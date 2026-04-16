extends "res://Scripts/Actions.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("actions-_ready-pre", [])
	var _repl = _lib._get_hooks("actions-_ready")
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
	_lib._dispatch("actions-_ready-post", [])
	_lib._dispatch_deferred("actions-_ready-callback", [])

func _physics_process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._caller = self
	_lib._dispatch("actions-_physics_process-pre", [_delta])
	var _repl = _lib._get_hooks("actions-_physics_process")
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
	_lib._dispatch("actions-_physics_process-post", [_delta])
	_lib._dispatch_deferred("actions-_physics_process-callback", [_delta])

func Show(slot: Slot):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slot)
		return
	_lib._caller = self
	_lib._dispatch("actions-show-pre", [slot])
	var _repl = _lib._get_hooks("actions-show")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slot])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slot)
	else:
		super(slot)
	_lib._dispatch("actions-show-post", [slot])
	_lib._dispatch_deferred("actions-show-callback", [slot])

func Hide():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-hide-pre", [])
	var _repl = _lib._get_hooks("actions-hide")
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
	_lib._dispatch("actions-hide-post", [])
	_lib._dispatch_deferred("actions-hide-callback", [])

func CalculateDistance():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-calculatedistance-pre", [])
	var _repl = _lib._get_hooks("actions-calculatedistance")
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
	_lib._dispatch("actions-calculatedistance-post", [])
	_lib._dispatch_deferred("actions-calculatedistance-callback", [])

func _on_blocker_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_blocker_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_blocker_gui_input")
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
	_lib._dispatch("actions-_on_blocker_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_blocker_gui_input-callback", [event])

func _on_panel_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_panel_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_panel_gui_input")
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
	_lib._dispatch("actions-_on_panel_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_panel_gui_input-callback", [event])

func _on_use_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_use_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_use_gui_input")
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
	_lib._dispatch("actions-_on_use_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_use_gui_input-callback", [event])

func _on_unload_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_unload_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_unload_gui_input")
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
	_lib._dispatch("actions-_on_unload_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_unload_gui_input-callback", [event])

func _on_split_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_split_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_split_gui_input")
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
	_lib._dispatch("actions-_on_split_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_split_gui_input-callback", [event])

func _on_take_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_take_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_take_gui_input")
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
	_lib._dispatch("actions-_on_take_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_take_gui_input-callback", [event])

func _on_equip_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_equip_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_equip_gui_input")
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
	_lib._dispatch("actions-_on_equip_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_equip_gui_input-callback", [event])

func _on_transfer_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_transfer_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_transfer_gui_input")
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
	_lib._dispatch("actions-_on_transfer_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_transfer_gui_input-callback", [event])

func _on_drop_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_drop_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_drop_gui_input")
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
	_lib._dispatch("actions-_on_drop_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_drop_gui_input-callback", [event])

func _on_place_gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_place_gui_input-pre", [event])
	var _repl = _lib._get_hooks("actions-_on_place_gui_input")
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
	_lib._dispatch("actions-_on_place_gui_input-post", [event])
	_lib._dispatch_deferred("actions-_on_place_gui_input-callback", [event])

func _on_use_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_use_pressed-pre", [])
	var _repl = _lib._get_hooks("actions-_on_use_pressed")
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
	_lib._dispatch("actions-_on_use_pressed-post", [])
	_lib._dispatch_deferred("actions-_on_use_pressed-callback", [])

func _on_unload_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_unload_pressed-pre", [])
	var _repl = _lib._get_hooks("actions-_on_unload_pressed")
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
	_lib._dispatch("actions-_on_unload_pressed-post", [])
	_lib._dispatch_deferred("actions-_on_unload_pressed-callback", [])

func _on_split_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_split_pressed-pre", [])
	var _repl = _lib._get_hooks("actions-_on_split_pressed")
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
	_lib._dispatch("actions-_on_split_pressed-post", [])
	_lib._dispatch_deferred("actions-_on_split_pressed-callback", [])

func _on_take_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_take_pressed-pre", [])
	var _repl = _lib._get_hooks("actions-_on_take_pressed")
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
	_lib._dispatch("actions-_on_take_pressed-post", [])
	_lib._dispatch_deferred("actions-_on_take_pressed-callback", [])

func _on_equip_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_equip_pressed-pre", [])
	var _repl = _lib._get_hooks("actions-_on_equip_pressed")
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
	_lib._dispatch("actions-_on_equip_pressed-post", [])
	_lib._dispatch_deferred("actions-_on_equip_pressed-callback", [])

func _on_transfer_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_transfer_pressed-pre", [])
	var _repl = _lib._get_hooks("actions-_on_transfer_pressed")
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
	_lib._dispatch("actions-_on_transfer_pressed-post", [])
	_lib._dispatch_deferred("actions-_on_transfer_pressed-callback", [])

func _on_drop_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_drop_pressed-pre", [])
	var _repl = _lib._get_hooks("actions-_on_drop_pressed")
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
	_lib._dispatch("actions-_on_drop_pressed-post", [])
	_lib._dispatch_deferred("actions-_on_drop_pressed-callback", [])

func _on_place_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-_on_place_pressed-pre", [])
	var _repl = _lib._get_hooks("actions-_on_place_pressed")
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
	_lib._dispatch("actions-_on_place_pressed-post", [])
	_lib._dispatch_deferred("actions-_on_place_pressed-callback", [])

func ClickAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("actions-clickaudio-pre", [])
	var _repl = _lib._get_hooks("actions-clickaudio")
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
	_lib._dispatch("actions-clickaudio-post", [])
	_lib._dispatch_deferred("actions-clickaudio-callback", [])

