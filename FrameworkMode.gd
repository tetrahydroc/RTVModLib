extends "res://Scripts/Mode.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("mode-_ready-pre", [])
	var _repl = _lib._get_hooks("mode-_ready")
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
	_lib._dispatch("mode-_ready-post", [])
	_lib._dispatch_deferred("mode-_ready-callback", [])

func _on_select_toggled(toggled_on):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._dispatch("mode-_on_select_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("mode-_on_select_toggled")
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
	_lib._dispatch("mode-_on_select_toggled-post", [toggled_on])
	_lib._dispatch_deferred("mode-_on_select_toggled-callback", [toggled_on])

func PlayClick():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("mode-playclick-pre", [])
	var _repl = _lib._get_hooks("mode-playclick")
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
	_lib._dispatch("mode-playclick-post", [])
	_lib._dispatch_deferred("mode-playclick-callback", [])

