extends "res://Scripts/Optimizer.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("optimizer-_ready-pre", [])
	var _repl = _lib._get_hooks("optimizer-_ready")
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
	_lib._dispatch("optimizer-_ready-post", [])
	_lib._dispatch_deferred("optimizer-_ready-callback", [])

func ExecuteSort(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("optimizer-executesort-pre", [_value])
	var _repl = _lib._get_hooks("optimizer-executesort")
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
	_lib._dispatch("optimizer-executesort-post", [_value])
	_lib._dispatch_deferred("optimizer-executesort-callback", [_value])

func ExecuteReindex(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("optimizer-executereindex-pre", [_value])
	var _repl = _lib._get_hooks("optimizer-executereindex")
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
	_lib._dispatch("optimizer-executereindex-post", [_value])
	_lib._dispatch_deferred("optimizer-executereindex-callback", [_value])

func ExecuteMerge(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("optimizer-executemerge-pre", [_value])
	var _repl = _lib._get_hooks("optimizer-executemerge")
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
	_lib._dispatch("optimizer-executemerge-post", [_value])
	_lib._dispatch_deferred("optimizer-executemerge-callback", [_value])

func FoldHierarchy(node: Node):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(node)
		return
	_lib._dispatch("optimizer-foldhierarchy-pre", [node])
	var _repl = _lib._get_hooks("optimizer-foldhierarchy")
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
	_lib._dispatch("optimizer-foldhierarchy-post", [node])
	_lib._dispatch_deferred("optimizer-foldhierarchy-callback", [node])

