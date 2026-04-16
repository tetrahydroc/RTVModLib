extends "res://Scripts/BorderPoles.gd"

func ExecuteClear(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("borderpoles-executeclear-pre", [_value])
	var _repl = _lib._get_hooks("borderpoles-executeclear")
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
	_lib._dispatch("borderpoles-executeclear-post", [_value])
	_lib._dispatch_deferred("borderpoles-executeclear-callback", [_value])

func ExecuteGeneratePoles(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("borderpoles-executegeneratepoles-pre", [_value])
	var _repl = _lib._get_hooks("borderpoles-executegeneratepoles")
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
	_lib._dispatch("borderpoles-executegeneratepoles-post", [_value])
	_lib._dispatch_deferred("borderpoles-executegeneratepoles-callback", [_value])

func ExecuteGenerateWires(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("borderpoles-executegeneratewires-pre", [_value])
	var _repl = _lib._get_hooks("borderpoles-executegeneratewires")
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
	_lib._dispatch("borderpoles-executegeneratewires-post", [_value])
	_lib._dispatch_deferred("borderpoles-executegeneratewires-callback", [_value])

func ExecuteGenerateCollider(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("borderpoles-executegeneratecollider-pre", [_value])
	var _repl = _lib._get_hooks("borderpoles-executegeneratecollider")
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
	_lib._dispatch("borderpoles-executegeneratecollider-post", [_value])
	_lib._dispatch_deferred("borderpoles-executegeneratecollider-callback", [_value])

func ExecuteMergePoles(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("borderpoles-executemergepoles-pre", [_value])
	var _repl = _lib._get_hooks("borderpoles-executemergepoles")
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
	_lib._dispatch("borderpoles-executemergepoles-post", [_value])
	_lib._dispatch_deferred("borderpoles-executemergepoles-callback", [_value])

func GetTerrainHeight(targetX: float, targetZ: float, dataTool: MeshDataTool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(targetX, targetZ, dataTool)
	_lib._caller = self
	_lib._dispatch("borderpoles-getterrainheight-pre", [targetX, targetZ, dataTool])
	var _result
	var _repl = _lib._get_hooks("borderpoles-getterrainheight")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([targetX, targetZ, dataTool])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(targetX, targetZ, dataTool)
	else:
		_result = super(targetX, targetZ, dataTool)
	_lib._dispatch("borderpoles-getterrainheight-post", [targetX, targetZ, dataTool])
	_lib._dispatch_deferred("borderpoles-getterrainheight-callback", [targetX, targetZ, dataTool])
	return _result

func FoldHierarchy(node: Node):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(node)
		return
	_lib._caller = self
	_lib._dispatch("borderpoles-foldhierarchy-pre", [node])
	var _repl = _lib._get_hooks("borderpoles-foldhierarchy")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([node])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(node)
	else:
		super(node)
	_lib._dispatch("borderpoles-foldhierarchy-post", [node])
	_lib._dispatch_deferred("borderpoles-foldhierarchy-callback", [node])

