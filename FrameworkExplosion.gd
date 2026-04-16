extends "res://Scripts/Explosion.gd"

func Explode():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("explosion-explode-pre", [])
	var _repl = _lib._get_hooks("explosion-explode")
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
	_lib._dispatch("explosion-explode-post", [])
	_lib._dispatch_deferred("explosion-explode-callback", [])

func Emit():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("explosion-emit-pre", [])
	var _repl = _lib._get_hooks("explosion-emit")
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
	_lib._dispatch("explosion-emit-post", [])
	_lib._dispatch_deferred("explosion-emit-callback", [])

func Light():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("explosion-light-pre", [])
	var _repl = _lib._get_hooks("explosion-light")
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
	_lib._dispatch("explosion-light-post", [])
	_lib._dispatch_deferred("explosion-light-callback", [])

func CheckIndoor():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("explosion-checkindoor-pre", [])
	var _repl = _lib._get_hooks("explosion-checkindoor")
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
	_lib._dispatch("explosion-checkindoor-post", [])
	_lib._dispatch_deferred("explosion-checkindoor-callback", [])

func CheckOverlap():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("explosion-checkoverlap-pre", [])
	var _repl = _lib._get_hooks("explosion-checkoverlap")
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
	_lib._dispatch("explosion-checkoverlap-post", [])
	_lib._dispatch_deferred("explosion-checkoverlap-callback", [])

func CheckLOS(target):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(target)
		return
	_lib._dispatch("explosion-checklos-pre", [target])
	var _repl = _lib._get_hooks("explosion-checklos")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([target])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(target)
	else:
		super(target)
	_lib._dispatch("explosion-checklos-post", [target])
	_lib._dispatch_deferred("explosion-checklos-callback", [target])

func CheckAlert():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("explosion-checkalert-pre", [])
	var _repl = _lib._get_hooks("explosion-checkalert")
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
	_lib._dispatch("explosion-checkalert-post", [])
	_lib._dispatch_deferred("explosion-checkalert-callback", [])

func PlayExplosion():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("explosion-playexplosion-pre", [])
	var _repl = _lib._get_hooks("explosion-playexplosion")
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
	_lib._dispatch("explosion-playexplosion-post", [])
	_lib._dispatch_deferred("explosion-playexplosion-callback", [])

func PlayTinnitus():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("explosion-playtinnitus-pre", [])
	var _repl = _lib._get_hooks("explosion-playtinnitus")
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
	_lib._dispatch("explosion-playtinnitus-post", [])
	_lib._dispatch_deferred("explosion-playtinnitus-callback", [])

