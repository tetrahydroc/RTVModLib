extends "res://Scripts/Grid.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grid-_ready-pre", [])
	var _repl = _lib._get_hooks("grid-_ready")
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
	_lib._dispatch("grid-_ready-post", [])
	_lib._dispatch_deferred("grid-_ready-callback", [])

func Spawn(item):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(item)
	_lib._dispatch("grid-spawn-pre", [item])
	var _result
	var _repl = _lib._get_hooks("grid-spawn")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([item])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(item)
	else:
		_result = super(item)
	_lib._dispatch("grid-spawn-post", [item])
	_lib._dispatch_deferred("grid-spawn-callback", [item])
	return _result

func Place(item):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(item)
	_lib._dispatch("grid-place-pre", [item])
	var _result
	var _repl = _lib._get_hooks("grid-place")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([item])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(item)
	else:
		_result = super(item)
	_lib._dispatch("grid-place-post", [item])
	_lib._dispatch_deferred("grid-place-callback", [item])
	return _result

func Pick(item):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(item)
	_lib._dispatch("grid-pick-pre", [item])
	var _result
	var _repl = _lib._get_hooks("grid-pick")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([item])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(item)
	else:
		_result = super(item)
	_lib._dispatch("grid-pick-post", [item])
	_lib._dispatch_deferred("grid-pick-callback", [item])
	return _result

func CreateGrid():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grid-creategrid-pre", [])
	var _repl = _lib._get_hooks("grid-creategrid")
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
	_lib._dispatch("grid-creategrid-post", [])
	_lib._dispatch_deferred("grid-creategrid-callback", [])

func CreateContainerGrid(containerSize: Vector2):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(containerSize)
		return
	_lib._dispatch("grid-createcontainergrid-pre", [containerSize])
	var _repl = _lib._get_hooks("grid-createcontainergrid")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([containerSize])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(containerSize)
	else:
		super(containerSize)
	_lib._dispatch("grid-createcontainergrid-post", [containerSize])
	_lib._dispatch_deferred("grid-createcontainergrid-callback", [containerSize])

func ClearGrid():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grid-cleargrid-pre", [])
	var _repl = _lib._get_hooks("grid-cleargrid")
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
	_lib._dispatch("grid-cleargrid-post", [])
	_lib._dispatch_deferred("grid-cleargrid-callback", [])

func GetGridSize(item):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(item)
	_lib._dispatch("grid-getgridsize-pre", [item])
	var _result
	var _repl = _lib._get_hooks("grid-getgridsize")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([item])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(item)
	else:
		_result = super(item)
	_lib._dispatch("grid-getgridsize-post", [item])
	_lib._dispatch_deferred("grid-getgridsize-callback", [item])
	return _result

func GetGridPosition(itemPosition):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(itemPosition)
	_lib._dispatch("grid-getgridposition-pre", [itemPosition])
	var _result
	var _repl = _lib._get_hooks("grid-getgridposition")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([itemPosition])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(itemPosition)
	else:
		_result = super(itemPosition)
	_lib._dispatch("grid-getgridposition-post", [itemPosition])
	_lib._dispatch_deferred("grid-getgridposition-callback", [itemPosition])
	return _result

func CheckGridSpace(x, y, w, h):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(x, y, w, h)
	_lib._dispatch("grid-checkgridspace-pre", [x, y, w, h])
	var _result
	var _repl = _lib._get_hooks("grid-checkgridspace")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([x, y, w, h])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(x, y, w, h)
	else:
		_result = super(x, y, w, h)
	_lib._dispatch("grid-checkgridspace-post", [x, y, w, h])
	_lib._dispatch_deferred("grid-checkgridspace-callback", [x, y, w, h])
	return _result

func UpdateGrid(x, y, w, h, state):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(x, y, w, h, state)
		return
	_lib._dispatch("grid-updategrid-pre", [x, y, w, h, state])
	var _repl = _lib._get_hooks("grid-updategrid")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([x, y, w, h, state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(x, y, w, h, state)
	else:
		super(x, y, w, h, state)
	_lib._dispatch("grid-updategrid-post", [x, y, w, h, state])
	_lib._dispatch_deferred("grid-updategrid-callback", [x, y, w, h, state])

