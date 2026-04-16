extends "res://Scripts/Cables.gd"

func ExecuteGenerate(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("cables-executegenerate-pre", [_value])
	var _repl = _lib._get_hooks("cables-executegenerate")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("cables-executegenerate-post", [_value])
	_lib._dispatch_deferred("cables-executegenerate-callback", [_value])

func ExecuteGenerateCables(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("cables-executegeneratecables-pre", [_value])
	var _repl = _lib._get_hooks("cables-executegeneratecables")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("cables-executegeneratecables-post", [_value])
	_lib._dispatch_deferred("cables-executegeneratecables-callback", [_value])

func ExecuteGenerateBlocker(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("cables-executegenerateblocker-pre", [_value])
	var _repl = _lib._get_hooks("cables-executegenerateblocker")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("cables-executegenerateblocker-post", [_value])
	_lib._dispatch_deferred("cables-executegenerateblocker-callback", [_value])

func ExecuteClear(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("cables-executeclear-pre", [_value])
	var _repl = _lib._get_hooks("cables-executeclear")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("cables-executeclear-post", [_value])
	_lib._dispatch_deferred("cables-executeclear-callback", [_value])

