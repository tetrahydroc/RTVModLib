extends "res://Scripts/KnifeRig.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._dispatch("kniferig-_ready-pre", [])
	var _repl = _lib._get_hooks("kniferig-_ready")
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
	_lib._dispatch("kniferig-_ready-post", [])
	_lib._dispatch_deferred("kniferig-_ready-callback", [])

func _input(_event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_event)
		return
	_lib._dispatch("kniferig-_input-pre", [_event])
	var _repl = _lib._get_hooks("kniferig-_input")
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
	_lib._dispatch("kniferig-_input-post", [_event])
	_lib._dispatch_deferred("kniferig-_input-callback", [_event])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("kniferig-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("kniferig-_physics_process")
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
	_lib._dispatch("kniferig-_physics_process-post", [delta])
	_lib._dispatch_deferred("kniferig-_physics_process-callback", [delta])

func HitCheck():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-hitcheck-pre", [])
	var _repl = _lib._get_hooks("kniferig-hitcheck")
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
	_lib._dispatch("kniferig-hitcheck-post", [])
	_lib._dispatch_deferred("kniferig-hitcheck-callback", [])

func KnifeDecal(hitCollider, hitPoint, hitNormal, hitSurface):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(hitCollider, hitPoint, hitNormal, hitSurface)
		return
	_lib._dispatch("kniferig-knifedecal-pre", [hitCollider, hitPoint, hitNormal, hitSurface])
	var _repl = _lib._get_hooks("kniferig-knifedecal")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([hitCollider, hitPoint, hitNormal, hitSurface])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(hitCollider, hitPoint, hitNormal, hitSurface)
	else:
		super(hitCollider, hitPoint, hitNormal, hitSurface)
	_lib._dispatch("kniferig-knifedecal-post", [hitCollider, hitPoint, hitNormal, hitSurface])
	_lib._dispatch_deferred("kniferig-knifedecal-callback", [hitCollider, hitPoint, hitNormal, hitSurface])

func AttackFinished():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-attackfinished-pre", [])
	var _repl = _lib._get_hooks("kniferig-attackfinished")
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
	_lib._dispatch("kniferig-attackfinished-post", [])
	_lib._dispatch_deferred("kniferig-attackfinished-callback", [])

func SlashAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-slashaudio-pre", [])
	var _repl = _lib._get_hooks("kniferig-slashaudio")
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
	_lib._dispatch("kniferig-slashaudio-post", [])
	_lib._dispatch_deferred("kniferig-slashaudio-callback", [])

func StabAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-stabaudio-pre", [])
	var _repl = _lib._get_hooks("kniferig-stabaudio")
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
	_lib._dispatch("kniferig-stabaudio-post", [])
	_lib._dispatch_deferred("kniferig-stabaudio-callback", [])

func InspectStartAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-inspectstartaudio-pre", [])
	var _repl = _lib._get_hooks("kniferig-inspectstartaudio")
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
	_lib._dispatch("kniferig-inspectstartaudio-post", [])
	_lib._dispatch_deferred("kniferig-inspectstartaudio-callback", [])

func InspectEndAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-inspectendaudio-pre", [])
	var _repl = _lib._get_hooks("kniferig-inspectendaudio")
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
	_lib._dispatch("kniferig-inspectendaudio-post", [])
	_lib._dispatch_deferred("kniferig-inspectendaudio-callback", [])

func InspectTurnAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-inspectturnaudio-pre", [])
	var _repl = _lib._get_hooks("kniferig-inspectturnaudio")
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
	_lib._dispatch("kniferig-inspectturnaudio-post", [])
	_lib._dispatch_deferred("kniferig-inspectturnaudio-callback", [])

func PlayInspectStart():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-playinspectstart-pre", [])
	var _repl = _lib._get_hooks("kniferig-playinspectstart")
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
	_lib._dispatch("kniferig-playinspectstart-post", [])
	_lib._dispatch_deferred("kniferig-playinspectstart-callback", [])

func PlayInspectRotate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-playinspectrotate-pre", [])
	var _repl = _lib._get_hooks("kniferig-playinspectrotate")
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
	_lib._dispatch("kniferig-playinspectrotate-post", [])
	_lib._dispatch_deferred("kniferig-playinspectrotate-callback", [])

func PlayInspectEnd():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("kniferig-playinspectend-pre", [])
	var _repl = _lib._get_hooks("kniferig-playinspectend")
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
	_lib._dispatch("kniferig-playinspectend-post", [])
	_lib._dispatch_deferred("kniferig-playinspectend-callback", [])

