extends "res://Scripts/FishingRig.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-_ready-pre", [])
	var _repl = _lib._get_hooks("fishingrig-_ready")
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
	_lib._dispatch("fishingrig-_ready-post", [])
	_lib._dispatch_deferred("fishingrig-_ready-callback", [])

func _input(_event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_event)
		return
	_lib._dispatch("fishingrig-_input-pre", [_event])
	var _repl = _lib._get_hooks("fishingrig-_input")
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
	_lib._dispatch("fishingrig-_input-post", [_event])
	_lib._dispatch_deferred("fishingrig-_input-callback", [_event])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("fishingrig-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("fishingrig-_physics_process")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(delta)
	else:
		super(delta)
	_lib._dispatch("fishingrig-_physics_process-post", [delta])
	_lib._dispatch_deferred("fishingrig-_physics_process-callback", [delta])

func Reeling(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("fishingrig-reeling-pre", [delta])
	var _repl = _lib._get_hooks("fishingrig-reeling")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(delta)
	else:
		super(delta)
	_lib._dispatch("fishingrig-reeling-post", [delta])
	_lib._dispatch_deferred("fishingrig-reeling-callback", [delta])

func ReelAudio(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("fishingrig-reelaudio-pre", [delta])
	var _repl = _lib._get_hooks("fishingrig-reelaudio")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(delta)
	else:
		super(delta)
	_lib._dispatch("fishingrig-reelaudio-post", [delta])
	_lib._dispatch_deferred("fishingrig-reelaudio-callback", [delta])

func Line():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-line-pre", [])
	var _repl = _lib._get_hooks("fishingrig-line")
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
	_lib._dispatch("fishingrig-line-post", [])
	_lib._dispatch_deferred("fishingrig-line-callback", [])

func ThrowPrepared():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-throwprepared-pre", [])
	var _repl = _lib._get_hooks("fishingrig-throwprepared")
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
	_lib._dispatch("fishingrig-throwprepared-post", [])
	_lib._dispatch_deferred("fishingrig-throwprepared-callback", [])

func ThrowExecuted():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-throwexecuted-pre", [])
	var _repl = _lib._get_hooks("fishingrig-throwexecuted")
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
	_lib._dispatch("fishingrig-throwexecuted-post", [])
	_lib._dispatch_deferred("fishingrig-throwexecuted-callback", [])

func ReelPrepared():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-reelprepared-pre", [])
	var _repl = _lib._get_hooks("fishingrig-reelprepared")
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
	_lib._dispatch("fishingrig-reelprepared-post", [])
	_lib._dispatch_deferred("fishingrig-reelprepared-callback", [])

func ThrowExecute():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-throwexecute-pre", [])
	var _repl = _lib._get_hooks("fishingrig-throwexecute")
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
	_lib._dispatch("fishingrig-throwexecute-post", [])
	_lib._dispatch_deferred("fishingrig-throwexecute-callback", [])

func Freeze():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-freeze-pre", [])
	var _repl = _lib._get_hooks("fishingrig-freeze")
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
	_lib._dispatch("fishingrig-freeze-post", [])
	_lib._dispatch_deferred("fishingrig-freeze-callback", [])

func Unfreeze():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-unfreeze-pre", [])
	var _repl = _lib._get_hooks("fishingrig-unfreeze")
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
	_lib._dispatch("fishingrig-unfreeze-post", [])
	_lib._dispatch_deferred("fishingrig-unfreeze-callback", [])

func PlayThrowStart():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-playthrowstart-pre", [])
	var _repl = _lib._get_hooks("fishingrig-playthrowstart")
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
	_lib._dispatch("fishingrig-playthrowstart-post", [])
	_lib._dispatch_deferred("fishingrig-playthrowstart-callback", [])

func PlayThrowEnd():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-playthrowend-pre", [])
	var _repl = _lib._get_hooks("fishingrig-playthrowend")
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
	_lib._dispatch("fishingrig-playthrowend-post", [])
	_lib._dispatch_deferred("fishingrig-playthrowend-callback", [])

func PlayThrowReset():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-playthrowreset-pre", [])
	var _repl = _lib._get_hooks("fishingrig-playthrowreset")
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
	_lib._dispatch("fishingrig-playthrowreset-post", [])
	_lib._dispatch_deferred("fishingrig-playthrowreset-callback", [])

func PlayReelEnd():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-playreelend-pre", [])
	var _repl = _lib._get_hooks("fishingrig-playreelend")
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
	_lib._dispatch("fishingrig-playreelend-post", [])
	_lib._dispatch_deferred("fishingrig-playreelend-callback", [])

func PlayHooked():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-playhooked-pre", [])
	var _repl = _lib._get_hooks("fishingrig-playhooked")
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
	_lib._dispatch("fishingrig-playhooked-post", [])
	_lib._dispatch_deferred("fishingrig-playhooked-callback", [])

func PlayCatch():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("fishingrig-playcatch-pre", [])
	var _repl = _lib._get_hooks("fishingrig-playcatch")
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
	_lib._dispatch("fishingrig-playcatch-post", [])
	_lib._dispatch_deferred("fishingrig-playcatch-callback", [])

