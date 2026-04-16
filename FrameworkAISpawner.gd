extends "res://Scripts/AISpawner.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("aispawner-_ready-pre", [])
	var _repl = _lib._get_hooks("aispawner-_ready")
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
	_lib._dispatch("aispawner-_ready-post", [])
	_lib._dispatch_deferred("aispawner-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("aispawner-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("aispawner-_physics_process")
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
	_lib._dispatch("aispawner-_physics_process-post", [delta])
	_lib._dispatch_deferred("aispawner-_physics_process-callback", [delta])

func CreatePools():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-createpools-pre", [])
	var _repl = _lib._get_hooks("aispawner-createpools")
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
	_lib._dispatch("aispawner-createpools-post", [])
	_lib._dispatch_deferred("aispawner-createpools-callback", [])

func SpawnWanderer():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-spawnwanderer-pre", [])
	var _repl = _lib._get_hooks("aispawner-spawnwanderer")
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
	_lib._dispatch("aispawner-spawnwanderer-post", [])
	_lib._dispatch_deferred("aispawner-spawnwanderer-callback", [])

func SpawnGuard():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-spawnguard-pre", [])
	var _repl = _lib._get_hooks("aispawner-spawnguard")
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
	_lib._dispatch("aispawner-spawnguard-post", [])
	_lib._dispatch_deferred("aispawner-spawnguard-callback", [])

func SpawnHider():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-spawnhider-pre", [])
	var _repl = _lib._get_hooks("aispawner-spawnhider")
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
	_lib._dispatch("aispawner-spawnhider-post", [])
	_lib._dispatch_deferred("aispawner-spawnhider-callback", [])

func SpawnMinion(spawnPosition):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(spawnPosition)
		return
	_lib._caller = self
	_lib._dispatch("aispawner-spawnminion-pre", [spawnPosition])
	var _repl = _lib._get_hooks("aispawner-spawnminion")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([spawnPosition])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(spawnPosition)
	else:
		super(spawnPosition)
	_lib._dispatch("aispawner-spawnminion-post", [spawnPosition])
	_lib._dispatch_deferred("aispawner-spawnminion-callback", [spawnPosition])

func SpawnBoss(spawnPosition):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(spawnPosition)
		return
	_lib._caller = self
	_lib._dispatch("aispawner-spawnboss-pre", [spawnPosition])
	var _repl = _lib._get_hooks("aispawner-spawnboss")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([spawnPosition])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(spawnPosition)
	else:
		super(spawnPosition)
	_lib._dispatch("aispawner-spawnboss-post", [spawnPosition])
	_lib._dispatch_deferred("aispawner-spawnboss-callback", [spawnPosition])

func CreateHotspot(location: Vector3, relay: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(location, relay)
		return
	_lib._caller = self
	_lib._dispatch("aispawner-createhotspot-pre", [location, relay])
	var _repl = _lib._get_hooks("aispawner-createhotspot")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([location, relay])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(location, relay)
	else:
		super(location, relay)
	_lib._dispatch("aispawner-createhotspot-post", [location, relay])
	_lib._dispatch_deferred("aispawner-createhotspot-callback", [location, relay])

func DestroyAllAI():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-destroyallai-pre", [])
	var _repl = _lib._get_hooks("aispawner-destroyallai")
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
	_lib._dispatch("aispawner-destroyallai-post", [])
	_lib._dispatch_deferred("aispawner-destroyallai-callback", [])

func GetPoints():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-getpoints-pre", [])
	var _repl = _lib._get_hooks("aispawner-getpoints")
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
	_lib._dispatch("aispawner-getpoints-post", [])
	_lib._dispatch_deferred("aispawner-getpoints-callback", [])

func ShowPoints():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-showpoints-pre", [])
	var _repl = _lib._get_hooks("aispawner-showpoints")
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
	_lib._dispatch("aispawner-showpoints-post", [])
	_lib._dispatch_deferred("aispawner-showpoints-callback", [])

func HidePoints():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-hidepoints-pre", [])
	var _repl = _lib._get_hooks("aispawner-hidepoints")
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
	_lib._dispatch("aispawner-hidepoints-post", [])
	_lib._dispatch_deferred("aispawner-hidepoints-callback", [])

func ShowGizmos():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-showgizmos-pre", [])
	var _repl = _lib._get_hooks("aispawner-showgizmos")
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
	_lib._dispatch("aispawner-showgizmos-post", [])
	_lib._dispatch_deferred("aispawner-showgizmos-callback", [])

func HideGizmos():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-hidegizmos-pre", [])
	var _repl = _lib._get_hooks("aispawner-hidegizmos")
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
	_lib._dispatch("aispawner-hidegizmos-post", [])
	_lib._dispatch_deferred("aispawner-hidegizmos-callback", [])

func ForceState(state):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._caller = self
	_lib._dispatch("aispawner-forcestate-pre", [state])
	var _repl = _lib._get_hooks("aispawner-forcestate")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(state)
	else:
		super(state)
	_lib._dispatch("aispawner-forcestate-post", [state])
	_lib._dispatch_deferred("aispawner-forcestate-callback", [state])

func AIHide():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-aihide-pre", [])
	var _repl = _lib._get_hooks("aispawner-aihide")
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
	_lib._dispatch("aispawner-aihide-post", [])
	_lib._dispatch_deferred("aispawner-aihide-callback", [])

func AIShow():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("aispawner-aishow-pre", [])
	var _repl = _lib._get_hooks("aispawner-aishow")
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
	_lib._dispatch("aispawner-aishow-post", [])
	_lib._dispatch_deferred("aispawner-aishow-callback", [])

