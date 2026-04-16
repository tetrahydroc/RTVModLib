extends "res://Scripts/AIPoint.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("aipoint-_ready-pre", [])
	var _repl = _lib._get_hooks("aipoint-_ready")
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
	_lib._dispatch("aipoint-_ready-post", [])
	_lib._dispatch_deferred("aipoint-_ready-callback", [])

