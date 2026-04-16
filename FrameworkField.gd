extends "res://Scripts/Field.gd"

func ExecuteGeneratePoles(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("field-executegeneratepoles-pre", [_value])
	var _repl = _lib._get_hooks("field-executegeneratepoles")
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
	_lib._dispatch("field-executegeneratepoles-post", [_value])
	_lib._dispatch_deferred("field-executegeneratepoles-callback", [_value])

func ExecuteGenerateRibbon(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("field-executegenerateribbon-pre", [_value])
	var _repl = _lib._get_hooks("field-executegenerateribbon")
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
	_lib._dispatch("field-executegenerateribbon-post", [_value])
	_lib._dispatch_deferred("field-executegenerateribbon-callback", [_value])

func ExecuteGenerateCollider(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("field-executegeneratecollider-pre", [_value])
	var _repl = _lib._get_hooks("field-executegeneratecollider")
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
	_lib._dispatch("field-executegeneratecollider-post", [_value])
	_lib._dispatch_deferred("field-executegeneratecollider-callback", [_value])

func ExecuteMergePoles(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("field-executemergepoles-pre", [_value])
	var _repl = _lib._get_hooks("field-executemergepoles")
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
	_lib._dispatch("field-executemergepoles-post", [_value])
	_lib._dispatch_deferred("field-executemergepoles-callback", [_value])

func ExecuteClear(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("field-executeclear-pre", [_value])
	var _repl = _lib._get_hooks("field-executeclear")
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
	_lib._dispatch("field-executeclear-post", [_value])
	_lib._dispatch_deferred("field-executeclear-callback", [_value])

func FoldHierarchy(node: Node):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(node)
		return
	_lib._caller = self
	_lib._dispatch("field-foldhierarchy-pre", [node])
	var _repl = _lib._get_hooks("field-foldhierarchy")
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
	_lib._dispatch("field-foldhierarchy-post", [node])
	_lib._dispatch_deferred("field-foldhierarchy-callback", [node])

