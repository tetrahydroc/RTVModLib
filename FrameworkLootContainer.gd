extends "res://Scripts/LootContainer.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-_ready-pre", [])
	var _repl = _lib._get_hooks("lootcontainer-_ready")
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
	_lib._dispatch("lootcontainer-_ready-post", [])
	_lib._dispatch_deferred("lootcontainer-_ready-callback", [])

func ClearBuckets():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-clearbuckets-pre", [])
	var _repl = _lib._get_hooks("lootcontainer-clearbuckets")
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
	_lib._dispatch("lootcontainer-clearbuckets-post", [])
	_lib._dispatch_deferred("lootcontainer-clearbuckets-callback", [])

func FillBuckets():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-fillbuckets-pre", [])
	var _repl = _lib._get_hooks("lootcontainer-fillbuckets")
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
	_lib._dispatch("lootcontainer-fillbuckets-post", [])
	_lib._dispatch_deferred("lootcontainer-fillbuckets-callback", [])

func FillBucketsCustom():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-fillbucketscustom-pre", [])
	var _repl = _lib._get_hooks("lootcontainer-fillbucketscustom")
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
	_lib._dispatch("lootcontainer-fillbucketscustom-post", [])
	_lib._dispatch_deferred("lootcontainer-fillbucketscustom-callback", [])

func GenerateLoot():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-generateloot-pre", [])
	var _repl = _lib._get_hooks("lootcontainer-generateloot")
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
	_lib._dispatch("lootcontainer-generateloot-post", [])
	_lib._dispatch_deferred("lootcontainer-generateloot-callback", [])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-interact-pre", [])
	var _repl = _lib._get_hooks("lootcontainer-interact")
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
	_lib._dispatch("lootcontainer-interact-post", [])
	_lib._dispatch_deferred("lootcontainer-interact-callback", [])

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("lootcontainer-updatetooltip")
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
	_lib._dispatch("lootcontainer-updatetooltip-post", [])
	_lib._dispatch_deferred("lootcontainer-updatetooltip-callback", [])

func CreateLoot(item: ItemData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(item)
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-createloot-pre", [item])
	var _repl = _lib._get_hooks("lootcontainer-createloot")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([item])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(item)
	else:
		super(item)
	_lib._dispatch("lootcontainer-createloot-post", [item])
	_lib._dispatch_deferred("lootcontainer-createloot-callback", [item])

func Storage(containerGrid: Grid):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(containerGrid)
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-storage-pre", [containerGrid])
	var _repl = _lib._get_hooks("lootcontainer-storage")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([containerGrid])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(containerGrid)
	else:
		super(containerGrid)
	_lib._dispatch("lootcontainer-storage-post", [containerGrid])
	_lib._dispatch_deferred("lootcontainer-storage-callback", [containerGrid])

func ContainerAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("lootcontainer-containeraudio-pre", [])
	var _repl = _lib._get_hooks("lootcontainer-containeraudio")
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
	_lib._dispatch("lootcontainer-containeraudio-post", [])
	_lib._dispatch_deferred("lootcontainer-containeraudio-callback", [])

