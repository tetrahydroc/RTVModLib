extends "res://Scripts/Controller.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("controller-_ready-pre", [])
	var _repl = _lib._get_hooks("controller-_ready")
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
	_lib._dispatch("controller-_ready-post", [])
	_lib._dispatch_deferred("controller-_ready-callback", [])

func _input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("controller-_input-pre", [event])
	var _repl = _lib._get_hooks("controller-_input")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([event])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(event)
	else:
		super(event)
	_lib._dispatch("controller-_input-post", [event])
	_lib._dispatch_deferred("controller-_input-callback", [event])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("controller-_physics_process")
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
	_lib._dispatch("controller-_physics_process-post", [delta])
	_lib._dispatch_deferred("controller-_physics_process-callback", [delta])

func InputDirection(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-inputdirection-pre", [_delta])
	var _repl = _lib._get_hooks("controller-inputdirection")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_delta)
	else:
		super(_delta)
	_lib._dispatch("controller-inputdirection-post", [_delta])
	_lib._dispatch_deferred("controller-inputdirection-callback", [_delta])

func MovementStates(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-movementstates-pre", [delta])
	var _repl = _lib._get_hooks("controller-movementstates")
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
	_lib._dispatch("controller-movementstates-post", [delta])
	_lib._dispatch_deferred("controller-movementstates-callback", [delta])

func Movement(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-movement-pre", [delta])
	var _repl = _lib._get_hooks("controller-movement")
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
	_lib._dispatch("controller-movement-post", [delta])
	_lib._dispatch_deferred("controller-movement-callback", [delta])

func Inertia(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-inertia-pre", [delta])
	var _repl = _lib._get_hooks("controller-inertia")
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
	_lib._dispatch("controller-inertia-post", [delta])
	_lib._dispatch_deferred("controller-inertia-callback", [delta])

func Crouch(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-crouch-pre", [delta])
	var _repl = _lib._get_hooks("controller-crouch")
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
	_lib._dispatch("controller-crouch-post", [delta])
	_lib._dispatch_deferred("controller-crouch-callback", [delta])

func Jump(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-jump-pre", [_delta])
	var _repl = _lib._get_hooks("controller-jump")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_delta)
	else:
		super(_delta)
	_lib._dispatch("controller-jump-post", [_delta])
	_lib._dispatch_deferred("controller-jump-callback", [_delta])

func Headbob(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-headbob-pre", [delta])
	var _repl = _lib._get_hooks("controller-headbob")
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
	_lib._dispatch("controller-headbob-post", [delta])
	_lib._dispatch_deferred("controller-headbob-callback", [delta])

func StartSwim():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-startswim-pre", [])
	var _repl = _lib._get_hooks("controller-startswim")
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
	_lib._dispatch("controller-startswim-post", [])
	_lib._dispatch_deferred("controller-startswim-callback", [])

func EndSwim():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-endswim-pre", [])
	var _repl = _lib._get_hooks("controller-endswim")
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
	_lib._dispatch("controller-endswim-post", [])
	_lib._dispatch_deferred("controller-endswim-callback", [])

func Swim(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-swim-pre", [delta])
	var _repl = _lib._get_hooks("controller-swim")
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
	_lib._dispatch("controller-swim-post", [delta])
	_lib._dispatch_deferred("controller-swim-callback", [delta])

func Fly():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-fly-pre", [])
	var _repl = _lib._get_hooks("controller-fly")
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
	_lib._dispatch("controller-fly-post", [])
	_lib._dispatch_deferred("controller-fly-callback", [])

func Gravity(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-gravity-pre", [delta])
	var _repl = _lib._get_hooks("controller-gravity")
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
	_lib._dispatch("controller-gravity-post", [delta])
	_lib._dispatch_deferred("controller-gravity-callback", [delta])

func Falling():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-falling-pre", [])
	var _repl = _lib._get_hooks("controller-falling")
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
	_lib._dispatch("controller-falling-post", [])
	_lib._dispatch_deferred("controller-falling-callback", [])

func Landing(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-landing-pre", [_delta])
	var _repl = _lib._get_hooks("controller-landing")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_delta)
	else:
		super(_delta)
	_lib._dispatch("controller-landing-post", [_delta])
	_lib._dispatch_deferred("controller-landing-callback", [_delta])

func JumpImpulse(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-jumpimpulse-pre", [delta])
	var _repl = _lib._get_hooks("controller-jumpimpulse")
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
	_lib._dispatch("controller-jumpimpulse-post", [delta])
	_lib._dispatch_deferred("controller-jumpimpulse-callback", [delta])

func LandImpulse(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-landimpulse-pre", [delta])
	var _repl = _lib._get_hooks("controller-landimpulse")
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
	_lib._dispatch("controller-landimpulse-post", [delta])
	_lib._dispatch_deferred("controller-landimpulse-callback", [delta])

func CrouchImpulse(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-crouchimpulse-pre", [delta])
	var _repl = _lib._get_hooks("controller-crouchimpulse")
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
	_lib._dispatch("controller-crouchimpulse-post", [delta])
	_lib._dispatch_deferred("controller-crouchimpulse-callback", [delta])

func StandImpulse(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-standimpulse-pre", [delta])
	var _repl = _lib._get_hooks("controller-standimpulse")
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
	_lib._dispatch("controller-standimpulse-post", [delta])
	_lib._dispatch_deferred("controller-standimpulse-callback", [delta])

func SwimDetection():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-swimdetection-pre", [])
	var _repl = _lib._get_hooks("controller-swimdetection")
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
	_lib._dispatch("controller-swimdetection-post", [])
	_lib._dispatch_deferred("controller-swimdetection-callback", [])

func SurfaceDetection(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("controller-surfacedetection-pre", [delta])
	var _repl = _lib._get_hooks("controller-surfacedetection")
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
	_lib._dispatch("controller-surfacedetection-post", [delta])
	_lib._dispatch_deferred("controller-surfacedetection-callback", [delta])

func PlayFootstep():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-playfootstep-pre", [])
	var _repl = _lib._get_hooks("controller-playfootstep")
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
	_lib._dispatch("controller-playfootstep-post", [])
	_lib._dispatch_deferred("controller-playfootstep-callback", [])

func PlayFootstepJump():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-playfootstepjump-pre", [])
	var _repl = _lib._get_hooks("controller-playfootstepjump")
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
	_lib._dispatch("controller-playfootstepjump-post", [])
	_lib._dispatch_deferred("controller-playfootstepjump-callback", [])

func PlayFootstepLand():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-playfootstepland-pre", [])
	var _repl = _lib._get_hooks("controller-playfootstepland")
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
	_lib._dispatch("controller-playfootstepland-post", [])
	_lib._dispatch_deferred("controller-playfootstepland-callback", [])

func PlaySwimSurface():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-playswimsurface-pre", [])
	var _repl = _lib._get_hooks("controller-playswimsurface")
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
	_lib._dispatch("controller-playswimsurface-post", [])
	_lib._dispatch_deferred("controller-playswimsurface-callback", [])

func PlaySwimSubmerged():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-playswimsubmerged-pre", [])
	var _repl = _lib._get_hooks("controller-playswimsubmerged")
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
	_lib._dispatch("controller-playswimsubmerged-post", [])
	_lib._dispatch_deferred("controller-playswimsubmerged-callback", [])

func PlayMovementCloth():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-playmovementcloth-pre", [])
	var _repl = _lib._get_hooks("controller-playmovementcloth")
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
	_lib._dispatch("controller-playmovementcloth-post", [])
	_lib._dispatch_deferred("controller-playmovementcloth-callback", [])

func PlayMovementGear():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("controller-playmovementgear-pre", [])
	var _repl = _lib._get_hooks("controller-playmovementgear")
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
	_lib._dispatch("controller-playmovementgear-post", [])
	_lib._dispatch_deferred("controller-playmovementgear-callback", [])

