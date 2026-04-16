extends "res://Scripts/GameData.gd"

func Reset():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("gamedata-reset-pre", [])
	var _repl = _lib._get_hooks("gamedata-reset")
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
	_lib._dispatch("gamedata-reset-post", [])
	_lib._dispatch_deferred("gamedata-reset-callback", [])

