extends "res://Scripts/Sorter.gd"

func ExecuteSort(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("sorter-executesort-pre", [_value])
	var _repl = _lib._get_hooks("sorter-executesort")
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
	_lib._dispatch("sorter-executesort-post", [_value])
	_lib._dispatch_deferred("sorter-executesort-callback", [_value])

func ExecuteReindex(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("sorter-executereindex-pre", [_value])
	var _repl = _lib._get_hooks("sorter-executereindex")
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
	_lib._dispatch("sorter-executereindex-post", [_value])
	_lib._dispatch_deferred("sorter-executereindex-callback", [_value])

