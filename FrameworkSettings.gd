extends "res://Scripts/Settings.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_ready-pre", [])
	var _repl = _lib._get_hooks("settings-_ready")
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
	_lib._dispatch("settings-_ready-post", [])
	_lib._dispatch_deferred("settings-_ready-callback", [])

func LoadPreferences():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-loadpreferences-pre", [])
	var _repl = _lib._get_hooks("settings-loadpreferences")
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
	_lib._dispatch("settings-loadpreferences-post", [])
	_lib._dispatch_deferred("settings-loadpreferences-callback", [])

func SaveMenuLog(value: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-savemenulog-pre", [value])
	var _repl = _lib._get_hooks("settings-savemenulog")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-savemenulog-post", [value])
	_lib._dispatch_deferred("settings-savemenulog-callback", [value])

func SaveMenuHardware(value: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-savemenuhardware-pre", [value])
	var _repl = _lib._get_hooks("settings-savemenuhardware")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-savemenuhardware-post", [value])
	_lib._dispatch_deferred("settings-savemenuhardware-callback", [value])

func SaveMenuIntro(value: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-savemenuintro-pre", [value])
	var _repl = _lib._get_hooks("settings-savemenuintro")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-savemenuintro-post", [value])
	_lib._dispatch_deferred("settings-savemenuintro-callback", [value])

func SaveMenuMusic(value: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-savemenumusic-pre", [value])
	var _repl = _lib._get_hooks("settings-savemenumusic")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-savemenumusic-post", [value])
	_lib._dispatch_deferred("settings-savemenumusic-callback", [value])

func SaveDefaultTool(tool: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(tool)
		return
	_lib._dispatch("settings-savedefaulttool-pre", [tool])
	var _repl = _lib._get_hooks("settings-savedefaulttool")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([tool])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(tool)
	else:
		super(tool)
	_lib._dispatch("settings-savedefaulttool-post", [tool])
	_lib._dispatch_deferred("settings-savedefaulttool-callback", [tool])

func SaveDefaultType(type: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(type)
		return
	_lib._dispatch("settings-savedefaulttype-pre", [type])
	var _repl = _lib._get_hooks("settings-savedefaulttype")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([type])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(type)
	else:
		super(type)
	_lib._dispatch("settings-savedefaulttype-post", [type])
	_lib._dispatch_deferred("settings-savedefaulttype-callback", [type])

func SaveCasetteVolume(value: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-savecasettevolume-pre", [value])
	var _repl = _lib._get_hooks("settings-savecasettevolume")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-savecasettevolume-post", [value])
	_lib._dispatch_deferred("settings-savecasettevolume-callback", [value])

func SaveCasetteOverride(override: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(override)
		return
	_lib._dispatch("settings-savecasetteoverride-pre", [override])
	var _repl = _lib._get_hooks("settings-savecasetteoverride")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([override])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(override)
	else:
		super(override)
	_lib._dispatch("settings-savecasetteoverride-post", [override])
	_lib._dispatch_deferred("settings-savecasetteoverride-callback", [override])

func _on_master_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_master_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_master_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_master_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_master_slider_value_changed-callback", [value])

func _on_ambient_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_ambient_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_ambient_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_ambient_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_ambient_slider_value_changed-callback", [value])

func _on_music_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_music_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_music_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_music_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_music_slider_value_changed-callback", [value])

func _on_music_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_music_off_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_music_off_pressed")
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
	_lib._dispatch("settings-_on_music_off_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_music_off_pressed-callback", [])

func _on_music_dynamic_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_music_dynamic_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_music_dynamic_pressed")
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
	_lib._dispatch("settings-_on_music_dynamic_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_music_dynamic_pressed-callback", [])

func _on_music_shelter_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_music_shelter_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_music_shelter_pressed")
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
	_lib._dispatch("settings-_on_music_shelter_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_music_shelter_pressed-callback", [])

func _on_music_area_05_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_music_area_05_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_music_area_05_pressed")
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
	_lib._dispatch("settings-_on_music_area_05_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_music_area_05_pressed-callback", [])

func _on_music_border_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_music_border_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_music_border_pressed")
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
	_lib._dispatch("settings-_on_music_border_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_music_border_pressed-callback", [])

func _on_music_vostok_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_music_vostok_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_music_vostok_pressed")
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
	_lib._dispatch("settings-_on_music_vostok_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_music_vostok_pressed-callback", [])

func _on_interpolate_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_interpolate_off_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_interpolate_off_pressed")
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
	_lib._dispatch("settings-_on_interpolate_off_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_interpolate_off_pressed-callback", [])

func _on_interpolate_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_interpolate_on_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_interpolate_on_pressed")
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
	_lib._dispatch("settings-_on_interpolate_on_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_interpolate_on_pressed-callback", [])

func _on_fov_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_fov_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_fov_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_fov_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_fov_slider_value_changed-callback", [value])

func _on_headbob_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_headbob_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_headbob_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_headbob_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_headbob_slider_value_changed-callback", [value])

func _on_look_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_look_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_look_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_look_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_look_slider_value_changed-callback", [value])

func _on_aim_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_aim_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_aim_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_aim_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_aim_slider_value_changed-callback", [value])

func _on_scope_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_scope_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_scope_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_scope_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_scope_slider_value_changed-callback", [value])

func _on_exposure_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_exposure_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_exposure_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_exposure_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_exposure_slider_value_changed-callback", [value])

func _on_contrast_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_contrast_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_contrast_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_contrast_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_contrast_slider_value_changed-callback", [value])

func _on_saturation_slider_value_changed(value):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_saturation_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_saturation_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_saturation_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_saturation_slider_value_changed-callback", [value])

func _on_sharpness_slider_value_changed(value: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._dispatch("settings-_on_sharpness_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("settings-_on_sharpness_slider_value_changed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(value)
	else:
		super(value)
	_lib._dispatch("settings-_on_sharpness_slider_value_changed-post", [value])
	_lib._dispatch_deferred("settings-_on_sharpness_slider_value_changed-callback", [value])

func _on_map_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._dispatch("settings-_on_map_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("settings-_on_map_toggled")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([toggled_on])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(toggled_on)
	else:
		super(toggled_on)
	_lib._dispatch("settings-_on_map_toggled-post", [toggled_on])
	_lib._dispatch_deferred("settings-_on_map_toggled-callback", [toggled_on])

func _on_fps_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._dispatch("settings-_on_fps_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("settings-_on_fps_toggled")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([toggled_on])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(toggled_on)
	else:
		super(toggled_on)
	_lib._dispatch("settings-_on_fps_toggled-post", [toggled_on])
	_lib._dispatch_deferred("settings-_on_fps_toggled-callback", [toggled_on])

func _on_vitals_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._dispatch("settings-_on_vitals_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("settings-_on_vitals_toggled")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([toggled_on])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(toggled_on)
	else:
		super(toggled_on)
	_lib._dispatch("settings-_on_vitals_toggled-post", [toggled_on])
	_lib._dispatch_deferred("settings-_on_vitals_toggled-callback", [toggled_on])

func _on_medical_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._dispatch("settings-_on_medical_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("settings-_on_medical_toggled")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([toggled_on])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(toggled_on)
	else:
		super(toggled_on)
	_lib._dispatch("settings-_on_medical_toggled-post", [toggled_on])
	_lib._dispatch_deferred("settings-_on_medical_toggled-callback", [toggled_on])

func _on_placement_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._dispatch("settings-_on_placement_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("settings-_on_placement_toggled")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([toggled_on])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(toggled_on)
	else:
		super(toggled_on)
	_lib._dispatch("settings-_on_placement_toggled-post", [toggled_on])
	_lib._dispatch_deferred("settings-_on_placement_toggled-callback", [toggled_on])

func _on_decor_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._dispatch("settings-_on_decor_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("settings-_on_decor_toggled")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([toggled_on])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(toggled_on)
	else:
		super(toggled_on)
	_lib._dispatch("settings-_on_decor_toggled-post", [toggled_on])
	_lib._dispatch_deferred("settings-_on_decor_toggled-callback", [toggled_on])

func _on_tooltip_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_tooltip_on_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_tooltip_on_pressed")
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
	_lib._dispatch("settings-_on_tooltip_on_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_tooltip_on_pressed-callback", [])

func _on_tooltip_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_tooltip_off_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_tooltip_off_pressed")
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
	_lib._dispatch("settings-_on_tooltip_off_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_tooltip_off_pressed-callback", [])

func _on_pip_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_pip_on_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_pip_on_pressed")
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
	_lib._dispatch("settings-_on_pip_on_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_pip_on_pressed-callback", [])

func _on_pip_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_pip_off_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_pip_off_pressed")
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
	_lib._dispatch("settings-_on_pip_off_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_pip_off_pressed-callback", [])

func _on_shadows_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_shadows_on_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_shadows_on_pressed")
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
	_lib._dispatch("settings-_on_shadows_on_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_shadows_on_pressed-callback", [])

func _on_shadows_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_shadows_off_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_shadows_off_pressed")
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
	_lib._dispatch("settings-_on_shadows_off_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_shadows_off_pressed-callback", [])

func _on_reflections_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_reflections_on_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_reflections_on_pressed")
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
	_lib._dispatch("settings-_on_reflections_on_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_reflections_on_pressed-callback", [])

func _on_reflections_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_reflections_off_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_reflections_off_pressed")
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
	_lib._dispatch("settings-_on_reflections_off_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_reflections_off_pressed-callback", [])

func _on_ao_on_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_ao_on_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_ao_on_pressed")
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
	_lib._dispatch("settings-_on_ao_on_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_ao_on_pressed-callback", [])

func _on_ao_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_ao_off_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_ao_off_pressed")
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
	_lib._dispatch("settings-_on_ao_off_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_ao_off_pressed-callback", [])

func _on_fullscreen_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_fullscreen_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_fullscreen_pressed")
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
	_lib._dispatch("settings-_on_fullscreen_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_fullscreen_pressed-callback", [])

func _on_windowed_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_windowed_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_windowed_pressed")
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
	_lib._dispatch("settings-_on_windowed_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_windowed_pressed-callback", [])

func _on_monitors_item_selected(index: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(index)
		return
	_lib._dispatch("settings-_on_monitors_item_selected-pre", [index])
	var _repl = _lib._get_hooks("settings-_on_monitors_item_selected")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([index])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(index)
	else:
		super(index)
	_lib._dispatch("settings-_on_monitors_item_selected-post", [index])
	_lib._dispatch_deferred("settings-_on_monitors_item_selected-callback", [index])

func _on_sizes_item_selected(index: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(index)
		return
	_lib._dispatch("settings-_on_sizes_item_selected-pre", [index])
	var _repl = _lib._get_hooks("settings-_on_sizes_item_selected")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([index])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(index)
	else:
		super(index)
	_lib._dispatch("settings-_on_sizes_item_selected-post", [index])
	_lib._dispatch_deferred("settings-_on_sizes_item_selected-callback", [index])

func _on_r_low_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_r_low_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_r_low_pressed")
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
	_lib._dispatch("settings-_on_r_low_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_r_low_pressed-callback", [])

func _on_r_medium_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_r_medium_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_r_medium_pressed")
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
	_lib._dispatch("settings-_on_r_medium_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_r_medium_pressed-callback", [])

func _on_r_high_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_r_high_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_r_high_pressed")
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
	_lib._dispatch("settings-_on_r_high_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_r_high_pressed-callback", [])

func _on_r_ultra_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_r_ultra_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_r_ultra_pressed")
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
	_lib._dispatch("settings-_on_r_ultra_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_r_ultra_pressed-callback", [])

func _on_l_low_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_l_low_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_l_low_pressed")
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
	_lib._dispatch("settings-_on_l_low_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_l_low_pressed-callback", [])

func _on_l_medium_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_l_medium_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_l_medium_pressed")
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
	_lib._dispatch("settings-_on_l_medium_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_l_medium_pressed-callback", [])

func _on_l_high_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_l_high_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_l_high_pressed")
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
	_lib._dispatch("settings-_on_l_high_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_l_high_pressed-callback", [])

func _on_l_ultra_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_l_ultra_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_l_ultra_pressed")
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
	_lib._dispatch("settings-_on_l_ultra_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_l_ultra_pressed-callback", [])

func _on_msaa_off_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_msaa_off_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_msaa_off_pressed")
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
	_lib._dispatch("settings-_on_msaa_off_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_msaa_off_pressed-callback", [])

func _on_msaa_2x_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_msaa_2x_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_msaa_2x_pressed")
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
	_lib._dispatch("settings-_on_msaa_2x_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_msaa_2x_pressed-callback", [])

func _on_msaa_4x_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_msaa_4x_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_msaa_4x_pressed")
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
	_lib._dispatch("settings-_on_msaa_4x_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_msaa_4x_pressed-callback", [])

func _on_msaa_8x_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_msaa_8x_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_msaa_8x_pressed")
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
	_lib._dispatch("settings-_on_msaa_8x_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_msaa_8x_pressed-callback", [])

func _on_fps_60_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_fps_60_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_fps_60_pressed")
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
	_lib._dispatch("settings-_on_fps_60_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_fps_60_pressed-callback", [])

func _on_fps_120_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_fps_120_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_fps_120_pressed")
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
	_lib._dispatch("settings-_on_fps_120_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_fps_120_pressed-callback", [])

func _on_fps_200_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_fps_200_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_fps_200_pressed")
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
	_lib._dispatch("settings-_on_fps_200_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_fps_200_pressed-callback", [])

func _on_fps_300_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_fps_300_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_fps_300_pressed")
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
	_lib._dispatch("settings-_on_fps_300_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_fps_300_pressed-callback", [])

func _on_vsync_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_vsync_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_vsync_pressed")
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
	_lib._dispatch("settings-_on_vsync_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_vsync_pressed-callback", [])

func _on_unlimited_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_unlimited_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_unlimited_pressed")
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
	_lib._dispatch("settings-_on_unlimited_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_unlimited_pressed-callback", [])

func _on_menu_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_menu_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_menu_pressed")
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
	_lib._dispatch("settings-_on_menu_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_menu_pressed-callback", [])

func _on_quit_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_quit_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_quit_pressed")
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
	_lib._dispatch("settings-_on_quit_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_quit_pressed-callback", [])

func _on_exit_menu_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_exit_menu_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_exit_menu_pressed")
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
	_lib._dispatch("settings-_on_exit_menu_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_exit_menu_pressed-callback", [])

func _on_exit_quit_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_exit_quit_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_exit_quit_pressed")
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
	_lib._dispatch("settings-_on_exit_quit_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_exit_quit_pressed-callback", [])

func _on_exit_return_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-_on_exit_return_pressed-pre", [])
	var _repl = _lib._get_hooks("settings-_on_exit_return_pressed")
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
	_lib._dispatch("settings-_on_exit_return_pressed-post", [])
	_lib._dispatch_deferred("settings-_on_exit_return_pressed-callback", [])

func GetWindowSizes():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-getwindowsizes-pre", [])
	var _repl = _lib._get_hooks("settings-getwindowsizes")
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
	_lib._dispatch("settings-getwindowsizes-post", [])
	_lib._dispatch_deferred("settings-getwindowsizes-callback", [])

func GetMonitors():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-getmonitors-pre", [])
	var _repl = _lib._get_hooks("settings-getmonitors")
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
	_lib._dispatch("settings-getmonitors-post", [])
	_lib._dispatch_deferred("settings-getmonitors-callback", [])

func CenterWindow():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-centerwindow-pre", [])
	var _repl = _lib._get_hooks("settings-centerwindow")
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
	_lib._dispatch("settings-centerwindow-post", [])
	_lib._dispatch_deferred("settings-centerwindow-callback", [])

func PlayClick():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-playclick-pre", [])
	var _repl = _lib._get_hooks("settings-playclick")
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
	_lib._dispatch("settings-playclick-post", [])
	_lib._dispatch_deferred("settings-playclick-callback", [])

func PlayError():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("settings-playerror-pre", [])
	var _repl = _lib._get_hooks("settings-playerror")
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
	_lib._dispatch("settings-playerror-post", [])
	_lib._dispatch_deferred("settings-playerror-callback", [])

