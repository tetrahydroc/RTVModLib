extends "res://Scripts/Bed.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("bed-_ready-pre", [])
	var _repl = _lib._get_hooks("bed-_ready")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip and not _rtv_ready_done:
			super()
			_rtv_ready_done = true
	else:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
	_lib._dispatch("bed-_ready-post", [])
	_lib._dispatch_deferred("bed-_ready-callback", [])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("bed-interact-pre", [])
	var _repl = _lib._get_hooks("bed-interact")
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
	_lib._dispatch("bed-interact-post", [])
	_lib._dispatch_deferred("bed-interact-callback", [])

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("bed-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("bed-updatetooltip")
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
	_lib._dispatch("bed-updatetooltip-post", [])
	_lib._dispatch_deferred("bed-updatetooltip-callback", [])

func UpdateSimulation(sleepTime):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(sleepTime)
		return
	_lib._caller = self
	_lib._dispatch("bed-updatesimulation-pre", [sleepTime])
	var _repl = _lib._get_hooks("bed-updatesimulation")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([sleepTime])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(sleepTime)
	else:
		super(sleepTime)
	_lib._dispatch("bed-updatesimulation-post", [sleepTime])
	_lib._dispatch_deferred("bed-updatesimulation-callback", [sleepTime])

func PlayTransition():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("bed-playtransition-pre", [])
	var _repl = _lib._get_hooks("bed-playtransition")
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
	_lib._dispatch("bed-playtransition-post", [])
	_lib._dispatch_deferred("bed-playtransition-callback", [])

func PlaySleep():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("bed-playsleep-pre", [])
	var _repl = _lib._get_hooks("bed-playsleep")
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
	_lib._dispatch("bed-playsleep-post", [])
	_lib._dispatch_deferred("bed-playsleep-callback", [])

