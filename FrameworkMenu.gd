extends "res://Scripts/Menu.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("menu-_ready-pre", [])
	var _repl = _lib._get_hooks("menu-_ready")
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
	_lib._dispatch("menu-_ready-post", [])
	_lib._dispatch_deferred("menu-_ready-callback", [])

func _on_new_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_new_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_new_pressed")
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
	_lib._dispatch("menu-_on_new_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_new_pressed-callback", [])

func _on_load_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_load_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_load_pressed")
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
	_lib._dispatch("menu-_on_load_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_load_pressed-callback", [])

func _on_tutorial_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_tutorial_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_tutorial_pressed")
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
	_lib._dispatch("menu-_on_tutorial_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_tutorial_pressed-callback", [])

func _on_settings_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_settings_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_settings_pressed")
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
	_lib._dispatch("menu-_on_settings_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_settings_pressed-callback", [])

func _on_roadmap_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_roadmap_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_roadmap_pressed")
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
	_lib._dispatch("menu-_on_roadmap_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_roadmap_pressed-callback", [])

func _on_about_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_about_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_about_pressed")
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
	_lib._dispatch("menu-_on_about_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_about_pressed-callback", [])

func _on_quit_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_quit_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_quit_pressed")
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
	_lib._dispatch("menu-_on_quit_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_quit_pressed-callback", [])

func _on_modes_enter_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_modes_enter_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_modes_enter_pressed")
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
	_lib._dispatch("menu-_on_modes_enter_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_modes_enter_pressed-callback", [])

func _on_modes_return_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_modes_return_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_modes_return_pressed")
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
	_lib._dispatch("menu-_on_modes_return_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_modes_return_pressed-callback", [])

func _on_settings_return_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_settings_return_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_settings_return_pressed")
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
	_lib._dispatch("menu-_on_settings_return_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_settings_return_pressed-callback", [])

func _on_roadmap_return_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_roadmap_return_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_roadmap_return_pressed")
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
	_lib._dispatch("menu-_on_roadmap_return_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_roadmap_return_pressed-callback", [])

func _on_about_return_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_about_return_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_about_return_pressed")
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
	_lib._dispatch("menu-_on_about_return_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_about_return_pressed-callback", [])

func _on_log_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_log_off_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_log_off_pressed")
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
	_lib._dispatch("menu-_on_log_off_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_log_off_pressed-callback", [])

func _on_log_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_log_on_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_log_on_pressed")
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
	_lib._dispatch("menu-_on_log_on_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_log_on_pressed-callback", [])

func _on_hw_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_hw_off_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_hw_off_pressed")
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
	_lib._dispatch("menu-_on_hw_off_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_hw_off_pressed-callback", [])

func _on_hw_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_hw_on_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_hw_on_pressed")
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
	_lib._dispatch("menu-_on_hw_on_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_hw_on_pressed-callback", [])

func _on_intro_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_intro_off_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_intro_off_pressed")
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
	_lib._dispatch("menu-_on_intro_off_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_intro_off_pressed-callback", [])

func _on_intro_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_intro_on_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_intro_on_pressed")
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
	_lib._dispatch("menu-_on_intro_on_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_intro_on_pressed-callback", [])

func _on_music_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_music_off_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_music_off_pressed")
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
	_lib._dispatch("menu-_on_music_off_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_music_off_pressed-callback", [])

func _on_music_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-_on_music_on_pressed-pre", [])
	var _repl = _lib._get_hooks("menu-_on_music_on_pressed")
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
	_lib._dispatch("menu-_on_music_on_pressed-post", [])
	_lib._dispatch_deferred("menu-_on_music_on_pressed-callback", [])

func DeactivateButtons():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-deactivatebuttons-pre", [])
	var _repl = _lib._get_hooks("menu-deactivatebuttons")
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
	_lib._dispatch("menu-deactivatebuttons-post", [])
	_lib._dispatch_deferred("menu-deactivatebuttons-callback", [])

func PlayClick():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("menu-playclick-pre", [])
	var _repl = _lib._get_hooks("menu-playclick")
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
	_lib._dispatch("menu-playclick-post", [])
	_lib._dispatch_deferred("menu-playclick-callback", [])

