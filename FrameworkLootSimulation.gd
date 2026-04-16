extends "res://Scripts/LootSimulation.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("lootsimulation-_ready-pre", [])
	var _repl = _lib._get_hooks("lootsimulation-_ready")
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
	_lib._dispatch("lootsimulation-_ready-post", [])
	_lib._dispatch_deferred("lootsimulation-_ready-callback", [])

func ClearBuckets():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("lootsimulation-clearbuckets-pre", [])
	var _repl = _lib._get_hooks("lootsimulation-clearbuckets")
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
	_lib._dispatch("lootsimulation-clearbuckets-post", [])
	_lib._dispatch_deferred("lootsimulation-clearbuckets-callback", [])

func FillBuckets():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("lootsimulation-fillbuckets-pre", [])
	var _repl = _lib._get_hooks("lootsimulation-fillbuckets")
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
	_lib._dispatch("lootsimulation-fillbuckets-post", [])
	_lib._dispatch_deferred("lootsimulation-fillbuckets-callback", [])

func FillBucketsCustom():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("lootsimulation-fillbucketscustom-pre", [])
	var _repl = _lib._get_hooks("lootsimulation-fillbucketscustom")
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
	_lib._dispatch("lootsimulation-fillbucketscustom-post", [])
	_lib._dispatch_deferred("lootsimulation-fillbucketscustom-callback", [])

func GenerateLoot():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("lootsimulation-generateloot-pre", [])
	var _repl = _lib._get_hooks("lootsimulation-generateloot")
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
	_lib._dispatch("lootsimulation-generateloot-post", [])
	_lib._dispatch_deferred("lootsimulation-generateloot-callback", [])

func SpawnItems():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("lootsimulation-spawnitems-pre", [])
	var _repl = _lib._get_hooks("lootsimulation-spawnitems")
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
	_lib._dispatch("lootsimulation-spawnitems-post", [])
	_lib._dispatch_deferred("lootsimulation-spawnitems-callback", [])

