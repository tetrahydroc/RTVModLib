extends "res://Scripts/Inputs.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._dispatch("inputs-_ready-pre", [])
	var _repl = _lib._get_hooks("inputs-_ready")
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
	_lib._dispatch("inputs-_ready-post", [])
	_lib._dispatch_deferred("inputs-_ready-callback", [])

func CreateActions():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-createactions-pre", [])
	var _repl = _lib._get_hooks("inputs-createactions")
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
	_lib._dispatch("inputs-createactions-post", [])
	_lib._dispatch_deferred("inputs-createactions-callback", [])

func ResetActions():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-resetactions-pre", [])
	var _repl = _lib._get_hooks("inputs-resetactions")
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
	_lib._dispatch("inputs-resetactions-post", [])
	_lib._dispatch_deferred("inputs-resetactions-callback", [])

func _on_input_pressed(button, action):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(button, action)
		return
	_lib._dispatch("inputs-_on_input_pressed-pre", [button, action])
	var _repl = _lib._get_hooks("inputs-_on_input_pressed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([button, action])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(button, action)
	else:
		super(button, action)
	_lib._dispatch("inputs-_on_input_pressed-post", [button, action])
	_lib._dispatch_deferred("inputs-_on_input_pressed-callback", [button, action])

func _on_reset_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-_on_reset_pressed-pre", [])
	var _repl = _lib._get_hooks("inputs-_on_reset_pressed")
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
	_lib._dispatch("inputs-_on_reset_pressed-post", [])
	_lib._dispatch_deferred("inputs-_on_reset_pressed-callback", [])

func _input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._dispatch("inputs-_input-pre", [event])
	var _repl = _lib._get_hooks("inputs-_input")
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
	_lib._dispatch("inputs-_input-post", [event])
	_lib._dispatch_deferred("inputs-_input-callback", [event])

func Deactivate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-deactivate-pre", [])
	var _repl = _lib._get_hooks("inputs-deactivate")
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
	_lib._dispatch("inputs-deactivate-post", [])
	_lib._dispatch_deferred("inputs-deactivate-callback", [])

func PlayClick():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-playclick-pre", [])
	var _repl = _lib._get_hooks("inputs-playclick")
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
	_lib._dispatch("inputs-playclick-post", [])
	_lib._dispatch_deferred("inputs-playclick-callback", [])

func _on_normal_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-_on_normal_pressed-pre", [])
	var _repl = _lib._get_hooks("inputs-_on_normal_pressed")
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
	_lib._dispatch("inputs-_on_normal_pressed-post", [])
	_lib._dispatch_deferred("inputs-_on_normal_pressed-callback", [])

func _on_inverted_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-_on_inverted_pressed-pre", [])
	var _repl = _lib._get_hooks("inputs-_on_inverted_pressed")
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
	_lib._dispatch("inputs-_on_inverted_pressed-post", [])
	_lib._dispatch_deferred("inputs-_on_inverted_pressed-callback", [])

func _on_sprint_hold_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-_on_sprint_hold_pressed-pre", [])
	var _repl = _lib._get_hooks("inputs-_on_sprint_hold_pressed")
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
	_lib._dispatch("inputs-_on_sprint_hold_pressed-post", [])
	_lib._dispatch_deferred("inputs-_on_sprint_hold_pressed-callback", [])

func _on_sprint_toggle_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-_on_sprint_toggle_pressed-pre", [])
	var _repl = _lib._get_hooks("inputs-_on_sprint_toggle_pressed")
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
	_lib._dispatch("inputs-_on_sprint_toggle_pressed-post", [])
	_lib._dispatch_deferred("inputs-_on_sprint_toggle_pressed-callback", [])

func _on_lean_hold_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-_on_lean_hold_pressed-pre", [])
	var _repl = _lib._get_hooks("inputs-_on_lean_hold_pressed")
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
	_lib._dispatch("inputs-_on_lean_hold_pressed-post", [])
	_lib._dispatch_deferred("inputs-_on_lean_hold_pressed-callback", [])

func _on_lean_toggle_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-_on_lean_toggle_pressed-pre", [])
	var _repl = _lib._get_hooks("inputs-_on_lean_toggle_pressed")
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
	_lib._dispatch("inputs-_on_lean_toggle_pressed-post", [])
	_lib._dispatch_deferred("inputs-_on_lean_toggle_pressed-callback", [])

func _on_aim_hold_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-_on_aim_hold_pressed-pre", [])
	var _repl = _lib._get_hooks("inputs-_on_aim_hold_pressed")
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
	_lib._dispatch("inputs-_on_aim_hold_pressed-post", [])
	_lib._dispatch_deferred("inputs-_on_aim_hold_pressed-callback", [])

func _on_aim_toggle_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("inputs-_on_aim_toggle_pressed-pre", [])
	var _repl = _lib._get_hooks("inputs-_on_aim_toggle_pressed")
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
	_lib._dispatch("inputs-_on_aim_toggle_pressed-post", [])
	_lib._dispatch_deferred("inputs-_on_aim_toggle_pressed-callback", [])

