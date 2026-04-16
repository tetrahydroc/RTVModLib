extends "res://Scripts/Audio.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("audio-_ready-pre", [])
	var _repl = _lib._get_hooks("audio-_ready")
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
	_lib._dispatch("audio-_ready-post", [])
	_lib._dispatch_deferred("audio-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("audio-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("audio-_physics_process")
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
	_lib._dispatch("audio-_physics_process-post", [delta])
	_lib._dispatch_deferred("audio-_physics_process-callback", [delta])

func Indoor(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("audio-indoor-pre", [delta])
	var _repl = _lib._get_hooks("audio-indoor")
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
	_lib._dispatch("audio-indoor-post", [delta])
	_lib._dispatch_deferred("audio-indoor-callback", [delta])

func Breathing(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("audio-breathing-pre", [delta])
	var _repl = _lib._get_hooks("audio-breathing")
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
	_lib._dispatch("audio-breathing-post", [delta])
	_lib._dispatch_deferred("audio-breathing-callback", [delta])

func Heartbeat(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("audio-heartbeat-pre", [delta])
	var _repl = _lib._get_hooks("audio-heartbeat")
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
	_lib._dispatch("audio-heartbeat-post", [delta])
	_lib._dispatch_deferred("audio-heartbeat-callback", [delta])

func Suffering(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("audio-suffering-pre", [delta])
	var _repl = _lib._get_hooks("audio-suffering")
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
	_lib._dispatch("audio-suffering-post", [delta])
	_lib._dispatch_deferred("audio-suffering-callback", [delta])

func Suffocating(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("audio-suffocating-pre", [delta])
	var _repl = _lib._get_hooks("audio-suffocating")
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
	_lib._dispatch("audio-suffocating-post", [delta])
	_lib._dispatch_deferred("audio-suffocating-callback", [delta])

func Music(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("audio-music-pre", [delta])
	var _repl = _lib._get_hooks("audio-music")
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
	_lib._dispatch("audio-music-post", [delta])
	_lib._dispatch_deferred("audio-music-callback", [delta])

func UpdateMusic():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("audio-updatemusic-pre", [])
	var _repl = _lib._get_hooks("audio-updatemusic")
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
	_lib._dispatch("audio-updatemusic-post", [])
	_lib._dispatch_deferred("audio-updatemusic-callback", [])

func GetRandomArea05Clip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("audio-getrandomarea05clip-pre", [])
	var _result
	var _repl = _lib._get_hooks("audio-getrandomarea05clip")
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
	_lib._dispatch("audio-getrandomarea05clip-post", [])
	_lib._dispatch_deferred("audio-getrandomarea05clip-callback", [])
	return _result

func GetRandomBorderZoneClip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("audio-getrandomborderzoneclip-pre", [])
	var _result
	var _repl = _lib._get_hooks("audio-getrandomborderzoneclip")
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
	_lib._dispatch("audio-getrandomborderzoneclip-post", [])
	_lib._dispatch_deferred("audio-getrandomborderzoneclip-callback", [])
	return _result

func GetRandomVostokClip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("audio-getrandomvostokclip-pre", [])
	var _result
	var _repl = _lib._get_hooks("audio-getrandomvostokclip")
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
	_lib._dispatch("audio-getrandomvostokclip-post", [])
	_lib._dispatch_deferred("audio-getrandomvostokclip-callback", [])
	return _result

func GetRandomShelterClip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("audio-getrandomshelterclip-pre", [])
	var _result
	var _repl = _lib._get_hooks("audio-getrandomshelterclip")
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
	_lib._dispatch("audio-getrandomshelterclip-post", [])
	_lib._dispatch_deferred("audio-getrandomshelterclip-callback", [])
	return _result

func GetNextArea05Clip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("audio-getnextarea05clip-pre", [])
	var _result
	var _repl = _lib._get_hooks("audio-getnextarea05clip")
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
	_lib._dispatch("audio-getnextarea05clip-post", [])
	_lib._dispatch_deferred("audio-getnextarea05clip-callback", [])
	return _result

func GetNextBorderZoneClip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("audio-getnextborderzoneclip-pre", [])
	var _result
	var _repl = _lib._get_hooks("audio-getnextborderzoneclip")
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
	_lib._dispatch("audio-getnextborderzoneclip-post", [])
	_lib._dispatch_deferred("audio-getnextborderzoneclip-callback", [])
	return _result

func GetNextVostokClip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("audio-getnextvostokclip-pre", [])
	var _result
	var _repl = _lib._get_hooks("audio-getnextvostokclip")
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
	_lib._dispatch("audio-getnextvostokclip-post", [])
	_lib._dispatch_deferred("audio-getnextvostokclip-callback", [])
	return _result

func GetNextShelterClip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("audio-getnextshelterclip-pre", [])
	var _result
	var _repl = _lib._get_hooks("audio-getnextshelterclip")
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
	_lib._dispatch("audio-getnextshelterclip-post", [])
	_lib._dispatch_deferred("audio-getnextshelterclip-callback", [])
	return _result

