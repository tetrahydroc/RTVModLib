extends "res://Scripts/World.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("world-_ready-pre", [])
	var _repl = _lib._get_hooks("world-_ready")
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
	_lib._dispatch("world-_ready-post", [])
	_lib._dispatch_deferred("world-_ready-callback", [])

func _process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("world-_process-pre", [delta])
	var _repl = _lib._get_hooks("world-_process")
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
	_lib._dispatch("world-_process-post", [delta])
	_lib._dispatch_deferred("world-_process-callback", [delta])

func TOD():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("world-tod-pre", [])
	var _repl = _lib._get_hooks("world-tod")
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
	_lib._dispatch("world-tod-post", [])
	_lib._dispatch_deferred("world-tod-callback", [])

func Weather(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("world-weather-pre", [delta])
	var _repl = _lib._get_hooks("world-weather")
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
	_lib._dispatch("world-weather-post", [delta])
	_lib._dispatch_deferred("world-weather-callback", [delta])

func Audio(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("world-audio-pre", [delta])
	var _repl = _lib._get_hooks("world-audio")
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
	_lib._dispatch("world-audio-post", [delta])
	_lib._dispatch_deferred("world-audio-callback", [delta])

func Static():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("world-static-pre", [])
	var _repl = _lib._get_hooks("world-static")
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
	_lib._dispatch("world-static-post", [])
	_lib._dispatch_deferred("world-static-callback", [])

func ExecuteLowRendering(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executelowrendering-pre", [_value])
	var _repl = _lib._get_hooks("world-executelowrendering")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executelowrendering-post", [_value])
	_lib._dispatch_deferred("world-executelowrendering-callback", [_value])

func ExecuteMediumRendering(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executemediumrendering-pre", [_value])
	var _repl = _lib._get_hooks("world-executemediumrendering")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executemediumrendering-post", [_value])
	_lib._dispatch_deferred("world-executemediumrendering-callback", [_value])

func ExecuteHighRendering(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executehighrendering-pre", [_value])
	var _repl = _lib._get_hooks("world-executehighrendering")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executehighrendering-post", [_value])
	_lib._dispatch_deferred("world-executehighrendering-callback", [_value])

func ExecuteUltraRendering(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executeultrarendering-pre", [_value])
	var _repl = _lib._get_hooks("world-executeultrarendering")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executeultrarendering-post", [_value])
	_lib._dispatch_deferred("world-executeultrarendering-callback", [_value])

func ExecuteLowLighting(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executelowlighting-pre", [_value])
	var _repl = _lib._get_hooks("world-executelowlighting")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executelowlighting-post", [_value])
	_lib._dispatch_deferred("world-executelowlighting-callback", [_value])

func ExecuteMediumLighting(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executemediumlighting-pre", [_value])
	var _repl = _lib._get_hooks("world-executemediumlighting")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executemediumlighting-post", [_value])
	_lib._dispatch_deferred("world-executemediumlighting-callback", [_value])

func ExecuteHighLighting(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executehighlighting-pre", [_value])
	var _repl = _lib._get_hooks("world-executehighlighting")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executehighlighting-post", [_value])
	_lib._dispatch_deferred("world-executehighlighting-callback", [_value])

func ExecuteUltraLighting(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executeultralighting-pre", [_value])
	var _repl = _lib._get_hooks("world-executeultralighting")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executeultralighting-post", [_value])
	_lib._dispatch_deferred("world-executeultralighting-callback", [_value])

func ExecuteDetailShadowsOn(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executedetailshadowson-pre", [_value])
	var _repl = _lib._get_hooks("world-executedetailshadowson")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executedetailshadowson-post", [_value])
	_lib._dispatch_deferred("world-executedetailshadowson-callback", [_value])

func ExecuteDetailShadowsOff(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executedetailshadowsoff-pre", [_value])
	var _repl = _lib._get_hooks("world-executedetailshadowsoff")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executedetailshadowsoff-post", [_value])
	_lib._dispatch_deferred("world-executedetailshadowsoff-callback", [_value])

func ExecuteWaterReflectionsOn(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executewaterreflectionson-pre", [_value])
	var _repl = _lib._get_hooks("world-executewaterreflectionson")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executewaterreflectionson-post", [_value])
	_lib._dispatch_deferred("world-executewaterreflectionson-callback", [_value])

func ExecuteWaterReflectionsOff(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executewaterreflectionsoff-pre", [_value])
	var _repl = _lib._get_hooks("world-executewaterreflectionsoff")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executewaterreflectionsoff-post", [_value])
	_lib._dispatch_deferred("world-executewaterreflectionsoff-callback", [_value])

func ExecuteHideIndicators(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executehideindicators-pre", [_value])
	var _repl = _lib._get_hooks("world-executehideindicators")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executehideindicators-post", [_value])
	_lib._dispatch_deferred("world-executehideindicators-callback", [_value])

func ExecuteShowIndicators(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executeshowindicators-pre", [_value])
	var _repl = _lib._get_hooks("world-executeshowindicators")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executeshowindicators-post", [_value])
	_lib._dispatch_deferred("world-executeshowindicators-callback", [_value])

func ExecuteShowSpawns(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executeshowspawns-pre", [_value])
	var _repl = _lib._get_hooks("world-executeshowspawns")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executeshowspawns-post", [_value])
	_lib._dispatch_deferred("world-executeshowspawns-callback", [_value])

func ExecuteHideSpawns(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._dispatch("world-executehidespawns-pre", [_value])
	var _repl = _lib._get_hooks("world-executehidespawns")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("world-executehidespawns-post", [_value])
	_lib._dispatch_deferred("world-executehidespawns-callback", [_value])

