extends "res://Scripts/MissileSpawner.gd"

func _process(delta: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("missilespawner-_process-pre", [delta])
	var _repl = _lib._get_hooks("missilespawner-_process")
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
	_lib._dispatch("missilespawner-_process-post", [delta])
	_lib._dispatch_deferred("missilespawner-_process-callback", [delta])

func ExecutePrepareMissiles(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("missilespawner-executepreparemissiles-pre", [_value])
	var _repl = _lib._get_hooks("missilespawner-executepreparemissiles")
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
	_lib._dispatch("missilespawner-executepreparemissiles-post", [_value])
	_lib._dispatch_deferred("missilespawner-executepreparemissiles-callback", [_value])

func ExecuteLaunchMissiles(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("missilespawner-executelaunchmissiles-pre", [_value])
	var _repl = _lib._get_hooks("missilespawner-executelaunchmissiles")
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
	_lib._dispatch("missilespawner-executelaunchmissiles-post", [_value])
	_lib._dispatch_deferred("missilespawner-executelaunchmissiles-callback", [_value])

func ExecuteClearMissiles(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("missilespawner-executeclearmissiles-pre", [_value])
	var _repl = _lib._get_hooks("missilespawner-executeclearmissiles")
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
	_lib._dispatch("missilespawner-executeclearmissiles-post", [_value])
	_lib._dispatch_deferred("missilespawner-executeclearmissiles-callback", [_value])

