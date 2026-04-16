extends "res://Scripts/Progress.gd"

func Use(time):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(time)
		return
	_lib._dispatch("progress-use-pre", [time])
	var _repl = _lib._get_hooks("progress-use")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([time])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(time)
	else:
		super(time)
	_lib._dispatch("progress-use-post", [time])
	_lib._dispatch_deferred("progress-use-callback", [time])

func Load(time):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(time)
		return
	_lib._dispatch("progress-load-pre", [time])
	var _repl = _lib._get_hooks("progress-load")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([time])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(time)
	else:
		super(time)
	_lib._dispatch("progress-load-post", [time])
	_lib._dispatch_deferred("progress-load-callback", [time])

func Unload(time):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(time)
		return
	_lib._dispatch("progress-unload-pre", [time])
	var _repl = _lib._get_hooks("progress-unload")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([time])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(time)
	else:
		super(time)
	_lib._dispatch("progress-unload-post", [time])
	_lib._dispatch_deferred("progress-unload-callback", [time])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("progress-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("progress-_physics_process")
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
	_lib._dispatch("progress-_physics_process-post", [delta])
	_lib._dispatch_deferred("progress-_physics_process-callback", [delta])

func PlayAmmoLoad():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("progress-playammoload-pre", [])
	var _repl = _lib._get_hooks("progress-playammoload")
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
	_lib._dispatch("progress-playammoload-post", [])
	_lib._dispatch_deferred("progress-playammoload-callback", [])

func _on_timer_timeout():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("progress-_on_timer_timeout-pre", [])
	var _repl = _lib._get_hooks("progress-_on_timer_timeout")
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
	_lib._dispatch("progress-_on_timer_timeout-post", [])
	_lib._dispatch_deferred("progress-_on_timer_timeout-callback", [])

