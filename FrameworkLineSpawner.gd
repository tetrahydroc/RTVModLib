extends "res://Scripts/LineSpawner.gd"

func ExecuteGenerate(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("linespawner-executegenerate-pre", [_value])
	var _repl = _lib._get_hooks("linespawner-executegenerate")
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
	_lib._dispatch("linespawner-executegenerate-post", [_value])
	_lib._dispatch_deferred("linespawner-executegenerate-callback", [_value])

func RaycastCheck(rayStart: Vector3, rayEnd: Vector3):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(rayStart, rayEnd)
	_lib._caller = self
	_lib._dispatch("linespawner-raycastcheck-pre", [rayStart, rayEnd])
	var _result
	var _repl = _lib._get_hooks("linespawner-raycastcheck")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([rayStart, rayEnd])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(rayStart, rayEnd)
	else:
		_result = super(rayStart, rayEnd)
	_lib._dispatch("linespawner-raycastcheck-post", [rayStart, rayEnd])
	_lib._dispatch_deferred("linespawner-raycastcheck-callback", [rayStart, rayEnd])
	return _result

func ExecuteClear(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("linespawner-executeclear-pre", [_value])
	var _repl = _lib._get_hooks("linespawner-executeclear")
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
	_lib._dispatch("linespawner-executeclear-post", [_value])
	_lib._dispatch_deferred("linespawner-executeclear-callback", [_value])

