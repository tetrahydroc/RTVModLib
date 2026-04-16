extends "res://Scripts/CatFeeder.gd"

func Activate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("catfeeder-activate-pre", [])
	var _repl = _lib._get_hooks("catfeeder-activate")
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
	_lib._dispatch("catfeeder-activate-post", [])
	_lib._dispatch_deferred("catfeeder-activate-callback", [])

func Deactivate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("catfeeder-deactivate-pre", [])
	var _repl = _lib._get_hooks("catfeeder-deactivate")
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
	_lib._dispatch("catfeeder-deactivate-post", [])
	_lib._dispatch_deferred("catfeeder-deactivate-callback", [])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("catfeeder-interact-pre", [])
	var _repl = _lib._get_hooks("catfeeder-interact")
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
	_lib._dispatch("catfeeder-interact-post", [])
	_lib._dispatch_deferred("catfeeder-interact-callback", [])

func TryFeeding():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("catfeeder-tryfeeding-pre", [])
	var _repl = _lib._get_hooks("catfeeder-tryfeeding")
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
	_lib._dispatch("catfeeder-tryfeeding-post", [])
	_lib._dispatch_deferred("catfeeder-tryfeeding-callback", [])

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("catfeeder-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("catfeeder-updatetooltip")
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
	_lib._dispatch("catfeeder-updatetooltip-post", [])
	_lib._dispatch_deferred("catfeeder-updatetooltip-callback", [])

func CreateFeedString():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("catfeeder-createfeedstring-pre", [])
	var _result
	var _repl = _lib._get_hooks("catfeeder-createfeedstring")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super()
	else:
		_result = super()
	_lib._dispatch("catfeeder-createfeedstring-post", [])
	_lib._dispatch_deferred("catfeeder-createfeedstring-callback", [])
	return _result

