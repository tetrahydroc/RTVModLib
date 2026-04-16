extends "res://Scripts/Track.gd"

func Initialize(track: TrackData, targetInterface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(track, targetInterface)
		return
	_lib._caller = self
	_lib._dispatch("track-initialize-pre", [track, targetInterface])
	var _repl = _lib._get_hooks("track-initialize")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([track, targetInterface])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(track, targetInterface)
	else:
		super(track, targetInterface)
	_lib._dispatch("track-initialize-post", [track, targetInterface])
	_lib._dispatch_deferred("track-initialize-callback", [track, targetInterface])

func _on_play_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._caller = self
	_lib._dispatch("track-_on_play_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("track-_on_play_toggled")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([toggled_on])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(toggled_on)
	else:
		super(toggled_on)
	_lib._dispatch("track-_on_play_toggled-post", [toggled_on])
	_lib._dispatch_deferred("track-_on_play_toggled-callback", [toggled_on])

func Default():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("track-default-pre", [])
	var _repl = _lib._get_hooks("track-default")
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
	_lib._dispatch("track-default-post", [])
	_lib._dispatch_deferred("track-default-callback", [])

func Active():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("track-active-pre", [])
	var _repl = _lib._get_hooks("track-active")
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
	_lib._dispatch("track-active-post", [])
	_lib._dispatch_deferred("track-active-callback", [])

func PlayClick():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("track-playclick-pre", [])
	var _repl = _lib._get_hooks("track-playclick")
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
	_lib._dispatch("track-playclick-post", [])
	_lib._dispatch_deferred("track-playclick-callback", [])

func PlayCasettePlay():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("track-playcasetteplay-pre", [])
	var _repl = _lib._get_hooks("track-playcasetteplay")
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
	_lib._dispatch("track-playcasetteplay-post", [])
	_lib._dispatch_deferred("track-playcasetteplay-callback", [])

func PlayCasetteStop():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("track-playcasettestop-pre", [])
	var _repl = _lib._get_hooks("track-playcasettestop")
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
	_lib._dispatch("track-playcasettestop-post", [])
	_lib._dispatch_deferred("track-playcasettestop-callback", [])

