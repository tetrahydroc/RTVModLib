extends "res://Scripts/Fuel.gd"

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fuel-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("fuel-updatetooltip")
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
	_lib._dispatch("fuel-updatetooltip-post", [])
	_lib._dispatch_deferred("fuel-updatetooltip-callback", [])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fuel-interact-pre", [])
	var _repl = _lib._get_hooks("fuel-interact")
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
	_lib._dispatch("fuel-interact-post", [])
	_lib._dispatch_deferred("fuel-interact-callback", [])

func ErrorAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fuel-erroraudio-pre", [])
	var _repl = _lib._get_hooks("fuel-erroraudio")
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
	_lib._dispatch("fuel-erroraudio-post", [])
	_lib._dispatch_deferred("fuel-erroraudio-callback", [])

