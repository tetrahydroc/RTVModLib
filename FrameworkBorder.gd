extends "res://Scripts/Border.gd"

func ExecuteGeneratePoles(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("border-executegeneratepoles-pre", [_value])
	var _repl = _lib._get_hooks("border-executegeneratepoles")
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
	_lib._dispatch("border-executegeneratepoles-post", [_value])
	_lib._dispatch_deferred("border-executegeneratepoles-callback", [_value])

func ExecuteGenerateRibbon(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("border-executegenerateribbon-pre", [_value])
	var _repl = _lib._get_hooks("border-executegenerateribbon")
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
	_lib._dispatch("border-executegenerateribbon-post", [_value])
	_lib._dispatch_deferred("border-executegenerateribbon-callback", [_value])

func ExecuteGenerateBlocker(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("border-executegenerateblocker-pre", [_value])
	var _repl = _lib._get_hooks("border-executegenerateblocker")
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
	_lib._dispatch("border-executegenerateblocker-post", [_value])
	_lib._dispatch_deferred("border-executegenerateblocker-callback", [_value])

func ExecuteGenerateBorder(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("border-executegenerateborder-pre", [_value])
	var _repl = _lib._get_hooks("border-executegenerateborder")
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
	_lib._dispatch("border-executegenerateborder-post", [_value])
	_lib._dispatch_deferred("border-executegenerateborder-callback", [_value])

func ExecuteMergePoles(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("border-executemergepoles-pre", [_value])
	var _repl = _lib._get_hooks("border-executemergepoles")
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
	_lib._dispatch("border-executemergepoles-post", [_value])
	_lib._dispatch_deferred("border-executemergepoles-callback", [_value])

func ExecuteClear(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("border-executeclear-pre", [_value])
	var _repl = _lib._get_hooks("border-executeclear")
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
	_lib._dispatch("border-executeclear-post", [_value])
	_lib._dispatch_deferred("border-executeclear-callback", [_value])

func FoldHierarchy(node: Node):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(node)
		return
	_lib._caller = self
	_lib._dispatch("border-foldhierarchy-pre", [node])
	var _repl = _lib._get_hooks("border-foldhierarchy")
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
	_lib._dispatch("border-foldhierarchy-post", [node])
	_lib._dispatch_deferred("border-foldhierarchy-callback", [node])

