extends "res://Scripts/Waypoints.gd"

func ExecuteClear(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("waypoints-executeclear-pre", [_value])
	var _repl = _lib._get_hooks("waypoints-executeclear")
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
	_lib._dispatch("waypoints-executeclear-post", [_value])
	_lib._dispatch_deferred("waypoints-executeclear-callback", [_value])

func ExecuteGenerate(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("waypoints-executegenerate-pre", [_value])
	var _repl = _lib._get_hooks("waypoints-executegenerate")
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
	_lib._dispatch("waypoints-executegenerate-post", [_value])
	_lib._dispatch_deferred("waypoints-executegenerate-callback", [_value])

func GetMeshY(mdt: MeshDataTool, x: float, z: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(mdt, x, z)
	_lib._caller = self
	_lib._dispatch("waypoints-getmeshy-pre", [mdt, x, z])
	var _result
	var _repl = _lib._get_hooks("waypoints-getmeshy")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([mdt, x, z])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(mdt, x, z)
	else:
		_result = super(mdt, x, z)
	_lib._dispatch("waypoints-getmeshy-post", [mdt, x, z])
	_lib._dispatch_deferred("waypoints-getmeshy-callback", [mdt, x, z])
	return _result

func SpawnWaypoint(spawnPosition: Vector3):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(spawnPosition)
		return
	_lib._caller = self
	_lib._dispatch("waypoints-spawnwaypoint-pre", [spawnPosition])
	var _repl = _lib._get_hooks("waypoints-spawnwaypoint")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([spawnPosition])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(spawnPosition)
	else:
		super(spawnPosition)
	_lib._dispatch("waypoints-spawnwaypoint-post", [spawnPosition])
	_lib._dispatch_deferred("waypoints-spawnwaypoint-callback", [spawnPosition])

