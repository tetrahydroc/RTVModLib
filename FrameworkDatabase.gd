extends "res://Scripts/Database.gd"

func ExecuteUpdate(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("database-executeupdate-pre", [_value])
	var _repl = _lib._get_hooks("database-executeupdate")
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
	_lib._dispatch("database-executeupdate-post", [_value])
	_lib._dispatch_deferred("database-executeupdate-callback", [_value])

