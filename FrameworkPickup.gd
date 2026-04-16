extends "res://Scripts/Pickup.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("pickup-_ready-pre", [])
	var _repl = _lib._get_hooks("pickup-_ready")
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
	_lib._dispatch("pickup-_ready-post", [])
	_lib._dispatch_deferred("pickup-_ready-callback", [])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("pickup-interact-pre", [])
	var _repl = _lib._get_hooks("pickup-interact")
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
	_lib._dispatch("pickup-interact-post", [])
	_lib._dispatch_deferred("pickup-interact-callback", [])

func Freeze():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("pickup-freeze-pre", [])
	var _repl = _lib._get_hooks("pickup-freeze")
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
	_lib._dispatch("pickup-freeze-post", [])
	_lib._dispatch_deferred("pickup-freeze-callback", [])

func Kinematic():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("pickup-kinematic-pre", [])
	var _repl = _lib._get_hooks("pickup-kinematic")
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
	_lib._dispatch("pickup-kinematic-post", [])
	_lib._dispatch_deferred("pickup-kinematic-callback", [])

func Unfreeze():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("pickup-unfreeze-pre", [])
	var _repl = _lib._get_hooks("pickup-unfreeze")
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
	_lib._dispatch("pickup-unfreeze-post", [])
	_lib._dispatch_deferred("pickup-unfreeze-callback", [])

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("pickup-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("pickup-updatetooltip")
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
	_lib._dispatch("pickup-updatetooltip-post", [])
	_lib._dispatch_deferred("pickup-updatetooltip-callback", [])

func UpdateAttachments():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("pickup-updateattachments-pre", [])
	var _repl = _lib._get_hooks("pickup-updateattachments")
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
	_lib._dispatch("pickup-updateattachments-post", [])
	_lib._dispatch_deferred("pickup-updateattachments-callback", [])

func Explode():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("pickup-explode-pre", [])
	var _repl = _lib._get_hooks("pickup-explode")
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
	_lib._dispatch("pickup-explode-post", [])
	_lib._dispatch_deferred("pickup-explode-callback", [])

func PlayPickup():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("pickup-playpickup-pre", [])
	var _repl = _lib._get_hooks("pickup-playpickup")
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
	_lib._dispatch("pickup-playpickup-post", [])
	_lib._dispatch_deferred("pickup-playpickup-callback", [])

