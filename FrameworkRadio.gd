extends "res://Scripts/Radio.gd"

func _physics_process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._caller = self
	_lib._dispatch("radio-_physics_process-pre", [_delta])
	var _repl = _lib._get_hooks("radio-_physics_process")
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
	_lib._dispatch("radio-_physics_process-post", [_delta])
	_lib._dispatch_deferred("radio-_physics_process-callback", [_delta])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("radio-interact-pre", [])
	var _repl = _lib._get_hooks("radio-interact")
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
	_lib._dispatch("radio-interact-post", [])
	_lib._dispatch_deferred("radio-interact-callback", [])

func Transmission():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("radio-transmission-pre", [])
	var _repl = _lib._get_hooks("radio-transmission")
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
	_lib._dispatch("radio-transmission-post", [])
	_lib._dispatch_deferred("radio-transmission-callback", [])

func GetRandomClip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("radio-getrandomclip-pre", [])
	var _result
	var _repl = _lib._get_hooks("radio-getrandomclip")
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
	_lib._dispatch("radio-getrandomclip-post", [])
	_lib._dispatch_deferred("radio-getrandomclip-callback", [])
	return _result

func GetRandomTransmissionClip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("radio-getrandomtransmissionclip-pre", [])
	var _result
	var _repl = _lib._get_hooks("radio-getrandomtransmissionclip")
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
	_lib._dispatch("radio-getrandomtransmissionclip-post", [])
	_lib._dispatch_deferred("radio-getrandomtransmissionclip-callback", [])
	return _result

func GetRandomTuningClip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("radio-getrandomtuningclip-pre", [])
	var _result
	var _repl = _lib._get_hooks("radio-getrandomtuningclip")
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
	_lib._dispatch("radio-getrandomtuningclip-post", [])
	_lib._dispatch_deferred("radio-getrandomtuningclip-callback", [])
	return _result

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("radio-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("radio-updatetooltip")
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
	_lib._dispatch("radio-updatetooltip-post", [])
	_lib._dispatch_deferred("radio-updatetooltip-callback", [])

func InteractAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("radio-interactaudio-pre", [])
	var _repl = _lib._get_hooks("radio-interactaudio")
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
	_lib._dispatch("radio-interactaudio-post", [])
	_lib._dispatch_deferred("radio-interactaudio-callback", [])

