extends "res://Scripts/Helicopter.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._dispatch("helicopter-_ready-pre", [])
	var _repl = _lib._get_hooks("helicopter-_ready")
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
	_lib._dispatch("helicopter-_ready-post", [])
	_lib._dispatch_deferred("helicopter-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("helicopter-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("helicopter-_physics_process")
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
	_lib._dispatch("helicopter-_physics_process-post", [delta])
	_lib._dispatch_deferred("helicopter-_physics_process-callback", [delta])

func RotorBlades(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("helicopter-rotorblades-pre", [delta])
	var _repl = _lib._get_hooks("helicopter-rotorblades")
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
	_lib._dispatch("helicopter-rotorblades-post", [delta])
	_lib._dispatch_deferred("helicopter-rotorblades-callback", [delta])

func Flyby(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("helicopter-flyby-pre", [delta])
	var _repl = _lib._get_hooks("helicopter-flyby")
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
	_lib._dispatch("helicopter-flyby-post", [delta])
	_lib._dispatch_deferred("helicopter-flyby-callback", [delta])

func Patrol(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("helicopter-patrol-pre", [delta])
	var _repl = _lib._get_hooks("helicopter-patrol")
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
	_lib._dispatch("helicopter-patrol-post", [delta])
	_lib._dispatch_deferred("helicopter-patrol-callback", [delta])

func Attack(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("helicopter-attack-pre", [delta])
	var _repl = _lib._get_hooks("helicopter-attack")
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
	_lib._dispatch("helicopter-attack-post", [delta])
	_lib._dispatch_deferred("helicopter-attack-callback", [delta])

func SetWaypoint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("helicopter-setwaypoint-pre", [])
	var _repl = _lib._get_hooks("helicopter-setwaypoint")
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
	_lib._dispatch("helicopter-setwaypoint-post", [])
	_lib._dispatch_deferred("helicopter-setwaypoint-callback", [])

func DistanceClear():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("helicopter-distanceclear-pre", [])
	var _repl = _lib._get_hooks("helicopter-distanceclear")
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
	_lib._dispatch("helicopter-distanceclear-post", [])
	_lib._dispatch_deferred("helicopter-distanceclear-callback", [])

func FireRockets():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("helicopter-firerockets-pre", [])
	var _repl = _lib._get_hooks("helicopter-firerockets")
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
	_lib._dispatch("helicopter-firerockets-post", [])
	_lib._dispatch_deferred("helicopter-firerockets-callback", [])

func Searchlight(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("helicopter-searchlight-pre", [delta])
	var _repl = _lib._get_hooks("helicopter-searchlight")
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
	_lib._dispatch("helicopter-searchlight-post", [delta])
	_lib._dispatch_deferred("helicopter-searchlight-callback", [delta])

func ActivateSearchlight():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("helicopter-activatesearchlight-pre", [])
	var _repl = _lib._get_hooks("helicopter-activatesearchlight")
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
	_lib._dispatch("helicopter-activatesearchlight-post", [])
	_lib._dispatch_deferred("helicopter-activatesearchlight-callback", [])

func DeactivateSearchlight():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("helicopter-deactivatesearchlight-pre", [])
	var _repl = _lib._get_hooks("helicopter-deactivatesearchlight")
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
	_lib._dispatch("helicopter-deactivatesearchlight-post", [])
	_lib._dispatch_deferred("helicopter-deactivatesearchlight-callback", [])

func SetSearchlightTarget():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("helicopter-setsearchlighttarget-pre", [])
	var _repl = _lib._get_hooks("helicopter-setsearchlighttarget")
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
	_lib._dispatch("helicopter-setsearchlighttarget-post", [])
	_lib._dispatch_deferred("helicopter-setsearchlighttarget-callback", [])

func Sensor(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("helicopter-sensor-pre", [delta])
	var _repl = _lib._get_hooks("helicopter-sensor")
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
	_lib._dispatch("helicopter-sensor-post", [delta])
	_lib._dispatch_deferred("helicopter-sensor-callback", [delta])

func Spotted():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("helicopter-spotted-pre", [])
	var _repl = _lib._get_hooks("helicopter-spotted")
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
	_lib._dispatch("helicopter-spotted-post", [])
	_lib._dispatch_deferred("helicopter-spotted-callback", [])

func PlayRocket():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("helicopter-playrocket-pre", [])
	var _repl = _lib._get_hooks("helicopter-playrocket")
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
	_lib._dispatch("helicopter-playrocket-post", [])
	_lib._dispatch_deferred("helicopter-playrocket-callback", [])

