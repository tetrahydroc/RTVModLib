extends "res://Scripts/Intro.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("intro-_ready-pre", [])
	var _repl = _lib._get_hooks("intro-_ready")
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
	_lib._dispatch("intro-_ready-post", [])
	_lib._dispatch_deferred("intro-_ready-callback", [])

func _input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._dispatch("intro-_input-pre", [event])
	var _repl = _lib._get_hooks("intro-_input")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([event])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(event)
	else:
		super(event)
	_lib._dispatch("intro-_input-post", [event])
	_lib._dispatch_deferred("intro-_input-callback", [event])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("intro-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("intro-_physics_process")
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
	_lib._dispatch("intro-_physics_process-post", [delta])
	_lib._dispatch_deferred("intro-_physics_process-callback", [delta])

func _on_audio_finished():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("intro-_on_audio_finished-pre", [])
	var _repl = _lib._get_hooks("intro-_on_audio_finished")
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
	_lib._dispatch("intro-_on_audio_finished-post", [])
	_lib._dispatch_deferred("intro-_on_audio_finished-callback", [])

func Continue():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("intro-continue-pre", [])
	var _repl = _lib._get_hooks("intro-continue")
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
	_lib._dispatch("intro-continue-post", [])
	_lib._dispatch_deferred("intro-continue-callback", [])

