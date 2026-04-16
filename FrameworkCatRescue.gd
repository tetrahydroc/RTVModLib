extends "res://Scripts/CatRescue.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("catrescue-_ready-pre", [])
	var _repl = _lib._get_hooks("catrescue-_ready")
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
	_lib._dispatch("catrescue-_ready-post", [])
	_lib._dispatch_deferred("catrescue-_ready-callback", [])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("catrescue-interact-pre", [])
	var _repl = _lib._get_hooks("catrescue-interact")
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
	_lib._dispatch("catrescue-interact-post", [])
	_lib._dispatch_deferred("catrescue-interact-callback", [])

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("catrescue-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("catrescue-updatetooltip")
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
	_lib._dispatch("catrescue-updatetooltip-post", [])
	_lib._dispatch_deferred("catrescue-updatetooltip-callback", [])

func PlayPickup():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("catrescue-playpickup-pre", [])
	var _repl = _lib._get_hooks("catrescue-playpickup")
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
	_lib._dispatch("catrescue-playpickup-post", [])
	_lib._dispatch_deferred("catrescue-playpickup-callback", [])

