extends "res://Scripts/Event.gd"

func Initialize(event: EventData, targetInterface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event, targetInterface)
		return
	_lib._caller = self
	_lib._dispatch("event-initialize-pre", [event, targetInterface])
	var _repl = _lib._get_hooks("event-initialize")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([event, targetInterface])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(event, targetInterface)
	else:
		super(event, targetInterface)
	_lib._dispatch("event-initialize-post", [event, targetInterface])
	_lib._dispatch_deferred("event-initialize-callback", [event, targetInterface])

func _on_show_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._caller = self
	_lib._dispatch("event-_on_show_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("event-_on_show_toggled")
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
	_lib._dispatch("event-_on_show_toggled-post", [toggled_on])
	_lib._dispatch_deferred("event-_on_show_toggled-callback", [toggled_on])

func Collapse():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("event-collapse-pre", [])
	var _repl = _lib._get_hooks("event-collapse")
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
	_lib._dispatch("event-collapse-post", [])
	_lib._dispatch_deferred("event-collapse-callback", [])

func Expand():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("event-expand-pre", [])
	var _repl = _lib._get_hooks("event-expand")
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
	_lib._dispatch("event-expand-post", [])
	_lib._dispatch_deferred("event-expand-callback", [])

func Default():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("event-default-pre", [])
	var _repl = _lib._get_hooks("event-default")
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
	_lib._dispatch("event-default-post", [])
	_lib._dispatch_deferred("event-default-callback", [])

func Active():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("event-active-pre", [])
	var _repl = _lib._get_hooks("event-active")
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
	_lib._dispatch("event-active-post", [])
	_lib._dispatch_deferred("event-active-callback", [])

func PlayClick():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("event-playclick-pre", [])
	var _repl = _lib._get_hooks("event-playclick")
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
	_lib._dispatch("event-playclick-post", [])
	_lib._dispatch_deferred("event-playclick-callback", [])

