extends "res://Scripts/Loading.gd"

func LoadingShaders():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("loading-loadingshaders-pre", [])
	var _repl = _lib._get_hooks("loading-loadingshaders")
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
	_lib._dispatch("loading-loadingshaders-post", [])
	_lib._dispatch_deferred("loading-loadingshaders-callback", [])

func LoadingFinished():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("loading-loadingfinished-pre", [])
	var _repl = _lib._get_hooks("loading-loadingfinished")
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
	_lib._dispatch("loading-loadingfinished-post", [])
	_lib._dispatch_deferred("loading-loadingfinished-callback", [])

func Hide():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("loading-hide-pre", [])
	var _repl = _lib._get_hooks("loading-hide")
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
	_lib._dispatch("loading-hide-post", [])
	_lib._dispatch_deferred("loading-hide-callback", [])

