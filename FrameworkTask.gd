extends "res://Scripts/Task.gd"

func Initialize(task: TaskData, targetInterface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(task, targetInterface)
		return
	_lib._dispatch("task-initialize-pre", [task, targetInterface])
	var _repl = _lib._get_hooks("task-initialize")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([task, targetInterface])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(task, targetInterface)
	else:
		super(task, targetInterface)
	_lib._dispatch("task-initialize-post", [task, targetInterface])
	_lib._dispatch_deferred("task-initialize-callback", [task, targetInterface])

func InitializeNote(task: TaskData, targetInterface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(task, targetInterface)
		return
	_lib._dispatch("task-initializenote-pre", [task, targetInterface])
	var _repl = _lib._get_hooks("task-initializenote")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([task, targetInterface])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(task, targetInterface)
	else:
		super(task, targetInterface)
	_lib._dispatch("task-initializenote-post", [task, targetInterface])
	_lib._dispatch_deferred("task-initializenote-callback", [task, targetInterface])

func CreateInputString():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("task-createinputstring-pre", [])
	var _result
	var _repl = _lib._get_hooks("task-createinputstring")
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
	_lib._dispatch("task-createinputstring-post", [])
	_lib._dispatch_deferred("task-createinputstring-callback", [])
	return _result

func CreateOutputString():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("task-createoutputstring-pre", [])
	var _result
	var _repl = _lib._get_hooks("task-createoutputstring")
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
	_lib._dispatch("task-createoutputstring-post", [])
	_lib._dispatch_deferred("task-createoutputstring-callback", [])
	return _result

func _on_input_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._dispatch("task-_on_input_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("task-_on_input_toggled")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([toggled_on])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(toggled_on)
	else:
		super(toggled_on)
	_lib._dispatch("task-_on_input_toggled-post", [toggled_on])
	_lib._dispatch_deferred("task-_on_input_toggled-callback", [toggled_on])

func _on_complete_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-_on_complete_pressed-pre", [])
	var _repl = _lib._get_hooks("task-_on_complete_pressed")
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
	_lib._dispatch("task-_on_complete_pressed-post", [])
	_lib._dispatch_deferred("task-_on_complete_pressed-callback", [])

func CanInput(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(slotData)
	_lib._dispatch("task-caninput-pre", [slotData])
	var _result
	var _repl = _lib._get_hooks("task-caninput")
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
	_lib._dispatch("task-caninput-post", [slotData])
	_lib._dispatch_deferred("task-caninput-callback", [slotData])
	return _result

func CanComplete():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-cancomplete-pre", [])
	var _repl = _lib._get_hooks("task-cancomplete")
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
	_lib._dispatch("task-cancomplete-post", [])
	_lib._dispatch_deferred("task-cancomplete-callback", [])

func ResetInput():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-resetinput-pre", [])
	var _repl = _lib._get_hooks("task-resetinput")
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
	_lib._dispatch("task-resetinput-post", [])
	_lib._dispatch_deferred("task-resetinput-callback", [])

func AddInputItem(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("task-addinputitem-pre", [slotData])
	var _repl = _lib._get_hooks("task-addinputitem")
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
	_lib._dispatch("task-addinputitem-post", [slotData])
	_lib._dispatch_deferred("task-addinputitem-callback", [slotData])

func RemoveInputItem(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._dispatch("task-removeinputitem-pre", [slotData])
	var _repl = _lib._get_hooks("task-removeinputitem")
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
	_lib._dispatch("task-removeinputitem-post", [slotData])
	_lib._dispatch_deferred("task-removeinputitem-callback", [slotData])

func _on_add_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-_on_add_pressed-pre", [])
	var _repl = _lib._get_hooks("task-_on_add_pressed")
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
	_lib._dispatch("task-_on_add_pressed-post", [])
	_lib._dispatch_deferred("task-_on_add_pressed-callback", [])

func _on_remove_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-_on_remove_pressed-pre", [])
	var _repl = _lib._get_hooks("task-_on_remove_pressed")
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
	_lib._dispatch("task-_on_remove_pressed-post", [])
	_lib._dispatch_deferred("task-_on_remove_pressed-callback", [])

func UpdateNoteButtons():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-updatenotebuttons-pre", [])
	var _repl = _lib._get_hooks("task-updatenotebuttons")
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
	_lib._dispatch("task-updatenotebuttons-post", [])
	_lib._dispatch_deferred("task-updatenotebuttons-callback", [])

func Default():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-default-pre", [])
	var _repl = _lib._get_hooks("task-default")
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
	_lib._dispatch("task-default-post", [])
	_lib._dispatch_deferred("task-default-callback", [])

func Selected():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-selected-pre", [])
	var _repl = _lib._get_hooks("task-selected")
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
	_lib._dispatch("task-selected-post", [])
	_lib._dispatch_deferred("task-selected-callback", [])

func Locked():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-locked-pre", [])
	var _repl = _lib._get_hooks("task-locked")
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
	_lib._dispatch("task-locked-post", [])
	_lib._dispatch_deferred("task-locked-callback", [])

func Completed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-completed-pre", [])
	var _repl = _lib._get_hooks("task-completed")
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
	_lib._dispatch("task-completed-post", [])
	_lib._dispatch_deferred("task-completed-callback", [])

func Note():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("task-note-pre", [])
	var _repl = _lib._get_hooks("task-note")
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
	_lib._dispatch("task-note-post", [])
	_lib._dispatch_deferred("task-note-callback", [])

