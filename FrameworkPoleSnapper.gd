extends "res://Scripts/PoleSnapper.gd"

func ExecuteSnap(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("polesnapper-executesnap-pre", [_value])
	var _repl = _lib._get_hooks("polesnapper-executesnap")
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
	_lib._dispatch("polesnapper-executesnap-post", [_value])
	_lib._dispatch_deferred("polesnapper-executesnap-callback", [_value])

