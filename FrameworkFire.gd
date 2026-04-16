extends "res://Scripts/Fire.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("fire-_ready-pre", [])
	var _repl = _lib._get_hooks("fire-_ready")
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
	_lib._dispatch("fire-_ready-post", [])
	_lib._dispatch_deferred("fire-_ready-callback", [])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("fire-interact-pre", [])
	var _repl = _lib._get_hooks("fire-interact")
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
	_lib._dispatch("fire-interact-post", [])
	_lib._dispatch_deferred("fire-interact-callback", [])

func Activate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("fire-activate-pre", [])
	var _repl = _lib._get_hooks("fire-activate")
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
	_lib._dispatch("fire-activate-post", [])
	_lib._dispatch_deferred("fire-activate-callback", [])

func Deactivate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("fire-deactivate-pre", [])
	var _repl = _lib._get_hooks("fire-deactivate")
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
	_lib._dispatch("fire-deactivate-post", [])
	_lib._dispatch_deferred("fire-deactivate-callback", [])

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("fire-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("fire-updatetooltip")
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
	_lib._dispatch("fire-updatetooltip-post", [])
	_lib._dispatch_deferred("fire-updatetooltip-callback", [])

func MatchCheck():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("fire-matchcheck-pre", [])
	var _result
	var _repl = _lib._get_hooks("fire-matchcheck")
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
	_lib._dispatch("fire-matchcheck-post", [])
	_lib._dispatch_deferred("fire-matchcheck-callback", [])
	return _result

func ConsumeMatch():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("fire-consumematch-pre", [])
	var _repl = _lib._get_hooks("fire-consumematch")
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
	_lib._dispatch("fire-consumematch-post", [])
	_lib._dispatch_deferred("fire-consumematch-callback", [])

func IgniteAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("fire-igniteaudio-pre", [])
	var _repl = _lib._get_hooks("fire-igniteaudio")
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
	_lib._dispatch("fire-igniteaudio-post", [])
	_lib._dispatch_deferred("fire-igniteaudio-callback", [])

func ExtinguishAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("fire-extinguishaudio-pre", [])
	var _repl = _lib._get_hooks("fire-extinguishaudio")
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
	_lib._dispatch("fire-extinguishaudio-post", [])
	_lib._dispatch_deferred("fire-extinguishaudio-callback", [])

