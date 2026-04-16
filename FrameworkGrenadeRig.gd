extends "res://Scripts/GrenadeRig.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-_ready-pre", [])
	var _repl = _lib._get_hooks("grenaderig-_ready")
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
	_lib._dispatch("grenaderig-_ready-post", [])
	_lib._dispatch_deferred("grenaderig-_ready-callback", [])

func _input(_event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_event)
		return
	_lib._dispatch("grenaderig-_input-pre", [_event])
	var _repl = _lib._get_hooks("grenaderig-_input")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_event])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_event)
	else:
		super(_event)
	_lib._dispatch("grenaderig-_input-post", [_event])
	_lib._dispatch_deferred("grenaderig-_input-callback", [_event])

func ThrowHighPrepared():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-throwhighprepared-pre", [])
	var _repl = _lib._get_hooks("grenaderig-throwhighprepared")
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
	_lib._dispatch("grenaderig-throwhighprepared-post", [])
	_lib._dispatch_deferred("grenaderig-throwhighprepared-callback", [])

func ThrowLowPrepared():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-throwlowprepared-pre", [])
	var _repl = _lib._get_hooks("grenaderig-throwlowprepared")
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
	_lib._dispatch("grenaderig-throwlowprepared-post", [])
	_lib._dispatch_deferred("grenaderig-throwlowprepared-callback", [])

func ThrowHighExecute():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-throwhighexecute-pre", [])
	var _repl = _lib._get_hooks("grenaderig-throwhighexecute")
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
	_lib._dispatch("grenaderig-throwhighexecute-post", [])
	_lib._dispatch_deferred("grenaderig-throwhighexecute-callback", [])

func ThrowLowExecute():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-throwlowexecute-pre", [])
	var _repl = _lib._get_hooks("grenaderig-throwlowexecute")
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
	_lib._dispatch("grenaderig-throwlowexecute-post", [])
	_lib._dispatch_deferred("grenaderig-throwlowexecute-callback", [])

func ThrowFinished():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-throwfinished-pre", [])
	var _repl = _lib._get_hooks("grenaderig-throwfinished")
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
	_lib._dispatch("grenaderig-throwfinished-post", [])
	_lib._dispatch_deferred("grenaderig-throwfinished-callback", [])

func PlayThrowPrepare():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-playthrowprepare-pre", [])
	var _repl = _lib._get_hooks("grenaderig-playthrowprepare")
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
	_lib._dispatch("grenaderig-playthrowprepare-post", [])
	_lib._dispatch_deferred("grenaderig-playthrowprepare-callback", [])

func PlayThrowHigh():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-playthrowhigh-pre", [])
	var _repl = _lib._get_hooks("grenaderig-playthrowhigh")
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
	_lib._dispatch("grenaderig-playthrowhigh-post", [])
	_lib._dispatch_deferred("grenaderig-playthrowhigh-callback", [])

func PlayThrowLow():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-playthrowlow-pre", [])
	var _repl = _lib._get_hooks("grenaderig-playthrowlow")
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
	_lib._dispatch("grenaderig-playthrowlow-post", [])
	_lib._dispatch_deferred("grenaderig-playthrowlow-callback", [])

func PlayPinRemove():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-playpinremove-pre", [])
	var _repl = _lib._get_hooks("grenaderig-playpinremove")
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
	_lib._dispatch("grenaderig-playpinremove-post", [])
	_lib._dispatch_deferred("grenaderig-playpinremove-callback", [])

func PlayPinAttach():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-playpinattach-pre", [])
	var _repl = _lib._get_hooks("grenaderig-playpinattach")
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
	_lib._dispatch("grenaderig-playpinattach-post", [])
	_lib._dispatch_deferred("grenaderig-playpinattach-callback", [])

func PlayHandleRelease():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-playhandlerelease-pre", [])
	var _repl = _lib._get_hooks("grenaderig-playhandlerelease")
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
	_lib._dispatch("grenaderig-playhandlerelease-post", [])
	_lib._dispatch_deferred("grenaderig-playhandlerelease-callback", [])

func PlayHandleDrop():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("grenaderig-playhandledrop-pre", [])
	var _repl = _lib._get_hooks("grenaderig-playhandledrop")
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
	_lib._dispatch("grenaderig-playhandledrop-post", [])
	_lib._dispatch_deferred("grenaderig-playhandledrop-callback", [])

