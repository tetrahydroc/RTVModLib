extends "res://Scripts/MapTool.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("maptool-_ready-pre", [])
	var _repl = _lib._get_hooks("maptool-_ready")
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
	_lib._dispatch("maptool-_ready-post", [])
	_lib._dispatch_deferred("maptool-_ready-callback", [])

func _gui_input(event):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(event)
		return
	_lib._caller = self
	_lib._dispatch("maptool-_gui_input-pre", [event])
	var _repl = _lib._get_hooks("maptool-_gui_input")
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
	_lib._dispatch("maptool-_gui_input-post", [event])
	_lib._dispatch_deferred("maptool-_gui_input-callback", [event])

func Zoom(factor: float, mouse_pos: Vector2):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(factor, mouse_pos)
		return
	_lib._caller = self
	_lib._dispatch("maptool-zoom-pre", [factor, mouse_pos])
	var _repl = _lib._get_hooks("maptool-zoom")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([factor, mouse_pos])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(factor, mouse_pos)
	else:
		super(factor, mouse_pos)
	_lib._dispatch("maptool-zoom-post", [factor, mouse_pos])
	_lib._dispatch_deferred("maptool-zoom-callback", [factor, mouse_pos])

func Focus(marker: String):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(marker)
		return
	_lib._caller = self
	_lib._dispatch("maptool-focus-pre", [marker])
	var _repl = _lib._get_hooks("maptool-focus")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([marker])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(marker)
	else:
		super(marker)
	_lib._dispatch("maptool-focus-post", [marker])
	_lib._dispatch_deferred("maptool-focus-callback", [marker])

