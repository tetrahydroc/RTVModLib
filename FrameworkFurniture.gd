extends "res://Scripts/Furniture.gd"
var _rtv_ready_done = false

func ExecuteInitialize(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("furniture-executeinitialize-pre", [_value])
	var _repl = _lib._get_hooks("furniture-executeinitialize")
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
	_lib._dispatch("furniture-executeinitialize-post", [_value])
	_lib._dispatch_deferred("furniture-executeinitialize-callback", [_value])

func ExecuteHideIndicators(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("furniture-executehideindicators-pre", [_value])
	var _repl = _lib._get_hooks("furniture-executehideindicators")
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
	_lib._dispatch("furniture-executehideindicators-post", [_value])
	_lib._dispatch_deferred("furniture-executehideindicators-callback", [_value])

func Catalog():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-catalog-pre", [])
	var _repl = _lib._get_hooks("furniture-catalog")
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
	_lib._dispatch("furniture-catalog-post", [])
	_lib._dispatch_deferred("furniture-catalog-callback", [])

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("furniture-_ready-pre", [])
	var _repl = _lib._get_hooks("furniture-_ready")
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
	_lib._dispatch("furniture-_ready-post", [])
	_lib._dispatch_deferred("furniture-_ready-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("furniture-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("furniture-_physics_process")
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
	_lib._dispatch("furniture-_physics_process-post", [delta])
	_lib._dispatch_deferred("furniture-_physics_process-callback", [delta])

func StartMove():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-startmove-pre", [])
	var _repl = _lib._get_hooks("furniture-startmove")
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
	_lib._dispatch("furniture-startmove-post", [])
	_lib._dispatch_deferred("furniture-startmove-callback", [])

func ResetMove():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-resetmove-pre", [])
	var _repl = _lib._get_hooks("furniture-resetmove")
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
	_lib._dispatch("furniture-resetmove-post", [])
	_lib._dispatch_deferred("furniture-resetmove-callback", [])

func HintPosition():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-hintposition-pre", [])
	var _repl = _lib._get_hooks("furniture-hintposition")
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
	_lib._dispatch("furniture-hintposition-post", [])
	_lib._dispatch_deferred("furniture-hintposition-callback", [])

func DeactivateRays():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-deactivaterays-pre", [])
	var _repl = _lib._get_hooks("furniture-deactivaterays")
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
	_lib._dispatch("furniture-deactivaterays-post", [])
	_lib._dispatch_deferred("furniture-deactivaterays-callback", [])

func ActivateRays():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-activaterays-pre", [])
	var _repl = _lib._get_hooks("furniture-activaterays")
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
	_lib._dispatch("furniture-activaterays-post", [])
	_lib._dispatch_deferred("furniture-activaterays-callback", [])

func CheckOverlap():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-checkoverlap-pre", [])
	var _repl = _lib._get_hooks("furniture-checkoverlap")
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
	_lib._dispatch("furniture-checkoverlap-post", [])
	_lib._dispatch_deferred("furniture-checkoverlap-callback", [])

func CheckRays():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-checkrays-pre", [])
	var _repl = _lib._get_hooks("furniture-checkrays")
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
	_lib._dispatch("furniture-checkrays-post", [])
	_lib._dispatch_deferred("furniture-checkrays-callback", [])

func GetSnapData():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("furniture-getsnapdata-pre", [])
	var _result
	var _repl = _lib._get_hooks("furniture-getsnapdata")
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
	_lib._dispatch("furniture-getsnapdata-post", [])
	_lib._dispatch_deferred("furniture-getsnapdata-callback", [])
	return _result

func CanPlace():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("furniture-canplace-pre", [])
	var _result
	var _repl = _lib._get_hooks("furniture-canplace")
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
	_lib._dispatch("furniture-canplace-post", [])
	_lib._dispatch_deferred("furniture-canplace-callback", [])
	return _result

func ParentItems():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-parentitems-pre", [])
	var _repl = _lib._get_hooks("furniture-parentitems")
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
	_lib._dispatch("furniture-parentitems-post", [])
	_lib._dispatch_deferred("furniture-parentitems-callback", [])

func FreeItems():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-freeitems-pre", [])
	var _repl = _lib._get_hooks("furniture-freeitems")
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
	_lib._dispatch("furniture-freeitems-post", [])
	_lib._dispatch_deferred("furniture-freeitems-callback", [])

func DropParentedItems():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-dropparenteditems-pre", [])
	var _repl = _lib._get_hooks("furniture-dropparenteditems")
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
	_lib._dispatch("furniture-dropparenteditems-post", [])
	_lib._dispatch_deferred("furniture-dropparenteditems-callback", [])

func ParentHint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-parenthint-pre", [])
	var _repl = _lib._get_hooks("furniture-parenthint")
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
	_lib._dispatch("furniture-parenthint-post", [])
	_lib._dispatch_deferred("furniture-parenthint-callback", [])

func FreeHint():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-freehint-pre", [])
	var _repl = _lib._get_hooks("furniture-freehint")
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
	_lib._dispatch("furniture-freehint-post", [])
	_lib._dispatch_deferred("furniture-freehint-callback", [])

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("furniture-updatetooltip")
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
	_lib._dispatch("furniture-updatetooltip-post", [])
	_lib._dispatch_deferred("furniture-updatetooltip-callback", [])

func PlayFurniture():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-playfurniture-pre", [])
	var _repl = _lib._get_hooks("furniture-playfurniture")
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
	_lib._dispatch("furniture-playfurniture-post", [])
	_lib._dispatch_deferred("furniture-playfurniture-callback", [])

func PlayPickup():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("furniture-playpickup-pre", [])
	var _repl = _lib._get_hooks("furniture-playpickup")
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
	_lib._dispatch("furniture-playpickup-post", [])
	_lib._dispatch_deferred("furniture-playpickup-callback", [])

