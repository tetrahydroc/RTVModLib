extends "res://Scripts/Spinner.gd"

func _process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("spinner-_process-pre", [delta])
	var _repl = _lib._get_hooks("spinner-_process")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(delta)
	else:
		super(delta)
	_lib._dispatch("spinner-_process-post", [delta])
	_lib._dispatch_deferred("spinner-_process-callback", [delta])

