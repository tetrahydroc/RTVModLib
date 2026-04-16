extends "res://Scripts/Interface.gd"

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("interface-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("interface-_physics_process")
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
	_lib._dispatch("interface-_physics_process-post", [delta])
	_lib._dispatch_deferred("interface-_physics_process-callback", [delta])

func Open():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-open-pre", [])
	var _repl = _lib._get_hooks("interface-open")
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
	_lib._dispatch("interface-open-post", [])
	_lib._dispatch_deferred("interface-open-callback", [])

func Close():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-close-pre", [])
	var _repl = _lib._get_hooks("interface-close")
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
	_lib._dispatch("interface-close-post", [])
	_lib._dispatch_deferred("interface-close-callback", [])

func UpdateUIDetails():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-updateuidetails-pre", [])
	var _repl = _lib._get_hooks("interface-updateuidetails")
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
	_lib._dispatch("interface-updateuidetails-post", [])
	_lib._dispatch_deferred("interface-updateuidetails-callback", [])

func UpdateStats(updateLabels: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(updateLabels)
		return
	_lib._caller = self
	_lib._dispatch("interface-updatestats-pre", [updateLabels])
	var _repl = _lib._get_hooks("interface-updatestats")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([updateLabels])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(updateLabels)
	else:
		super(updateLabels)
	_lib._dispatch("interface-updatestats-post", [updateLabels])
	_lib._dispatch_deferred("interface-updatestats-callback", [updateLabels])

func HideAllUI():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-hideallui-pre", [])
	var _repl = _lib._get_hooks("interface-hideallui")
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
	_lib._dispatch("interface-hideallui-post", [])
	_lib._dispatch_deferred("interface-hideallui-callback", [])

func _on_events_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_events_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_events_pressed")
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
	_lib._dispatch("interface-_on_events_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_events_pressed-callback", [])

func InitializeEvents():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-initializeevents-pre", [])
	var _repl = _lib._get_hooks("interface-initializeevents")
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
	_lib._dispatch("interface-initializeevents-post", [])
	_lib._dispatch_deferred("interface-initializeevents-callback", [])

func UpdateEvents():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-updateevents-pre", [])
	var _repl = _lib._get_hooks("interface-updateevents")
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
	_lib._dispatch("interface-updateevents-post", [])
	_lib._dispatch_deferred("interface-updateevents-callback", [])

func _on_crafting_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_crafting_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_crafting_pressed")
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
	_lib._dispatch("interface-_on_crafting_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_crafting_pressed-callback", [])

func _on_consumables_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_consumables_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_consumables_pressed")
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
	_lib._dispatch("interface-_on_consumables_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_consumables_pressed-callback", [])

func _on_medical_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_medical_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_medical_pressed")
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
	_lib._dispatch("interface-_on_medical_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_medical_pressed-callback", [])

func _on_equipment_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_equipment_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_equipment_pressed")
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
	_lib._dispatch("interface-_on_equipment_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_equipment_pressed-callback", [])

func _on_weapons_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_weapons_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_weapons_pressed")
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
	_lib._dispatch("interface-_on_weapons_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_weapons_pressed-callback", [])

func _on_electronics_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_electronics_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_electronics_pressed")
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
	_lib._dispatch("interface-_on_electronics_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_electronics_pressed-callback", [])

func _on_misc_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_misc_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_misc_pressed")
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
	_lib._dispatch("interface-_on_misc_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_misc_pressed-callback", [])

func _on_furniture_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_furniture_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_furniture_pressed")
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
	_lib._dispatch("interface-_on_furniture_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_furniture_pressed-callback", [])

func InitializeRecipes(type):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(type)
		return
	_lib._caller = self
	_lib._dispatch("interface-initializerecipes-pre", [type])
	var _repl = _lib._get_hooks("interface-initializerecipes")
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
	_lib._dispatch("interface-initializerecipes-post", [type])
	_lib._dispatch_deferred("interface-initializerecipes-callback", [type])

func UpdateProximity():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-updateproximity-pre", [])
	var _repl = _lib._get_hooks("interface-updateproximity")
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
	_lib._dispatch("interface-updateproximity-post", [])
	_lib._dispatch_deferred("interface-updateproximity-callback", [])

func Craft(recipeData: RecipeData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(recipeData)
		return
	_lib._caller = self
	_lib._dispatch("interface-craft-pre", [recipeData])
	var _repl = _lib._get_hooks("interface-craft")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([recipeData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(recipeData)
	else:
		super(recipeData)
	_lib._dispatch("interface-craft-post", [recipeData])
	_lib._dispatch_deferred("interface-craft-callback", [recipeData])

func _on_notes_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_notes_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_notes_pressed")
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
	_lib._dispatch("interface-_on_notes_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_notes_pressed-callback", [])

func InitializeNotes():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-initializenotes-pre", [])
	var _repl = _lib._get_hooks("interface-initializenotes")
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
	_lib._dispatch("interface-initializenotes-post", [])
	_lib._dispatch_deferred("interface-initializenotes-callback", [])

func Map():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-map-pre", [])
	var _repl = _lib._get_hooks("interface-map")
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
	_lib._dispatch("interface-map-post", [])
	_lib._dispatch_deferred("interface-map-callback", [])

func _on_map_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_map_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_map_pressed")
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
	_lib._dispatch("interface-_on_map_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_map_pressed-callback", [])

func _on_focus_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_focus_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_focus_pressed")
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
	_lib._dispatch("interface-_on_focus_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_focus_pressed-callback", [])

func FocusMap():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-focusmap-pre", [])
	var _repl = _lib._get_hooks("interface-focusmap")
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
	_lib._dispatch("interface-focusmap-post", [])
	_lib._dispatch_deferred("interface-focusmap-callback", [])

func CasettePlayer():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-casetteplayer-pre", [])
	var _repl = _lib._get_hooks("interface-casetteplayer")
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
	_lib._dispatch("interface-casetteplayer-post", [])
	_lib._dispatch_deferred("interface-casetteplayer-callback", [])

func _on_casette_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_casette_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_casette_pressed")
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
	_lib._dispatch("interface-_on_casette_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_casette_pressed-callback", [])

func _on_volume_slider_value_changed(value: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_volume_slider_value_changed-pre", [value])
	var _repl = _lib._get_hooks("interface-_on_volume_slider_value_changed")
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
	_lib._dispatch("interface-_on_volume_slider_value_changed-post", [value])
	_lib._dispatch_deferred("interface-_on_volume_slider_value_changed-callback", [value])

func _on_override_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_override_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("interface-_on_override_toggled")
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
	_lib._dispatch("interface-_on_override_toggled-post", [toggled_on])
	_lib._dispatch_deferred("interface-_on_override_toggled-callback", [toggled_on])

func _on_audio_finished():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_audio_finished-pre", [])
	var _repl = _lib._get_hooks("interface-_on_audio_finished")
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
	_lib._dispatch("interface-_on_audio_finished-post", [])
	_lib._dispatch_deferred("interface-_on_audio_finished-callback", [])

func InitializeCasette(casette: CasetteData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(casette)
		return
	_lib._caller = self
	_lib._dispatch("interface-initializecasette-pre", [casette])
	var _repl = _lib._get_hooks("interface-initializecasette")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([casette])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(casette)
	else:
		super(casette)
	_lib._dispatch("interface-initializecasette-post", [casette])
	_lib._dispatch_deferred("interface-initializecasette-callback", [casette])

func CasetteConsumption(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("interface-casetteconsumption-pre", [delta])
	var _repl = _lib._get_hooks("interface-casetteconsumption")
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
	_lib._dispatch("interface-casetteconsumption-post", [delta])
	_lib._dispatch_deferred("interface-casetteconsumption-callback", [delta])

func PlayCasette(casetteTrack: AudioStreamOggVorbis):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(casetteTrack)
		return
	_lib._caller = self
	_lib._dispatch("interface-playcasette-pre", [casetteTrack])
	var _repl = _lib._get_hooks("interface-playcasette")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([casetteTrack])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(casetteTrack)
	else:
		super(casetteTrack)
	_lib._dispatch("interface-playcasette-post", [casetteTrack])
	_lib._dispatch_deferred("interface-playcasette-callback", [casetteTrack])

func ResetCasette():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-resetcasette-pre", [])
	var _repl = _lib._get_hooks("interface-resetcasette")
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
	_lib._dispatch("interface-resetcasette-post", [])
	_lib._dispatch_deferred("interface-resetcasette-callback", [])

func LoadDefaultType(type: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(type)
		return
	_lib._caller = self
	_lib._dispatch("interface-loaddefaulttype-pre", [type])
	var _repl = _lib._get_hooks("interface-loaddefaulttype")
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
	_lib._dispatch("interface-loaddefaulttype-post", [type])
	_lib._dispatch_deferred("interface-loaddefaulttype-callback", [type])

func LoadCasetteVolume(value: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(value)
		return
	_lib._caller = self
	_lib._dispatch("interface-loadcasettevolume-pre", [value])
	var _repl = _lib._get_hooks("interface-loadcasettevolume")
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
	_lib._dispatch("interface-loadcasettevolume-post", [value])
	_lib._dispatch_deferred("interface-loadcasettevolume-callback", [value])

func LoadCasetteOverride(override: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(override)
		return
	_lib._caller = self
	_lib._dispatch("interface-loadcasetteoverride-pre", [override])
	var _repl = _lib._get_hooks("interface-loadcasetteoverride")
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
	_lib._dispatch("interface-loadcasetteoverride-post", [override])
	_lib._dispatch_deferred("interface-loadcasetteoverride-callback", [override])

func LoadDefaultTool(tool: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(tool)
		return
	_lib._caller = self
	_lib._dispatch("interface-loaddefaulttool-pre", [tool])
	var _repl = _lib._get_hooks("interface-loaddefaulttool")
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
	_lib._dispatch("interface-loaddefaulttool-post", [tool])
	_lib._dispatch_deferred("interface-loaddefaulttool-callback", [tool])

func HideAllTools():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-hidealltools-pre", [])
	var _repl = _lib._get_hooks("interface-hidealltools")
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
	_lib._dispatch("interface-hidealltools-post", [])
	_lib._dispatch_deferred("interface-hidealltools-callback", [])

func DisableTools():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-disabletools-pre", [])
	var _repl = _lib._get_hooks("interface-disabletools")
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
	_lib._dispatch("interface-disabletools-post", [])
	_lib._dispatch_deferred("interface-disabletools-callback", [])

func EnableTools():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-enabletools-pre", [])
	var _repl = _lib._get_hooks("interface-enabletools")
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
	_lib._dispatch("interface-enabletools-post", [])
	_lib._dispatch_deferred("interface-enabletools-callback", [])

func UpdateContainerGrid():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-updatecontainergrid-pre", [])
	var _repl = _lib._get_hooks("interface-updatecontainergrid")
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
	_lib._dispatch("interface-updatecontainergrid-post", [])
	_lib._dispatch_deferred("interface-updatecontainergrid-callback", [])

func FillContainerGrid():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-fillcontainergrid-pre", [])
	var _repl = _lib._get_hooks("interface-fillcontainergrid")
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
	_lib._dispatch("interface-fillcontainergrid-post", [])
	_lib._dispatch_deferred("interface-fillcontainergrid-callback", [])

func ClearContainerGrid():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-clearcontainergrid-pre", [])
	var _repl = _lib._get_hooks("interface-clearcontainergrid")
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
	_lib._dispatch("interface-clearcontainergrid-post", [])
	_lib._dispatch_deferred("interface-clearcontainergrid-callback", [])

func StorageContainerGrid():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-storagecontainergrid-pre", [])
	var _repl = _lib._get_hooks("interface-storagecontainergrid")
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
	_lib._dispatch("interface-storagecontainergrid-post", [])
	_lib._dispatch_deferred("interface-storagecontainergrid-callback", [])

func UpdateTraderInfo():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-updatetraderinfo-pre", [])
	var _repl = _lib._get_hooks("interface-updatetraderinfo")
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
	_lib._dispatch("interface-updatetraderinfo-post", [])
	_lib._dispatch_deferred("interface-updatetraderinfo-callback", [])

func FillSupplyGrid():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-fillsupplygrid-pre", [])
	var _repl = _lib._get_hooks("interface-fillsupplygrid")
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
	_lib._dispatch("interface-fillsupplygrid-post", [])
	_lib._dispatch_deferred("interface-fillsupplygrid-callback", [])

func ClearSupplyGrid():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-clearsupplygrid-pre", [])
	var _repl = _lib._get_hooks("interface-clearsupplygrid")
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
	_lib._dispatch("interface-clearsupplygrid-post", [])
	_lib._dispatch_deferred("interface-clearsupplygrid-callback", [])

func Resupply():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-resupply-pre", [])
	var _repl = _lib._get_hooks("interface-resupply")
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
	_lib._dispatch("interface-resupply-post", [])
	_lib._dispatch_deferred("interface-resupply-callback", [])

func TradeSelection():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-tradeselection-pre", [])
	var _repl = _lib._get_hooks("interface-tradeselection")
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
	_lib._dispatch("interface-tradeselection-post", [])
	_lib._dispatch_deferred("interface-tradeselection-callback", [])

func ResetTrading():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-resettrading-pre", [])
	var _repl = _lib._get_hooks("interface-resettrading")
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
	_lib._dispatch("interface-resettrading-post", [])
	_lib._dispatch_deferred("interface-resettrading-callback", [])

func CalculateDeal():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-calculatedeal-pre", [])
	var _repl = _lib._get_hooks("interface-calculatedeal")
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
	_lib._dispatch("interface-calculatedeal-post", [])
	_lib._dispatch_deferred("interface-calculatedeal-callback", [])

func CompleteDeal():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-completedeal-pre", [])
	var _repl = _lib._get_hooks("interface-completedeal")
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
	_lib._dispatch("interface-completedeal-post", [])
	_lib._dispatch_deferred("interface-completedeal-callback", [])

func _on_reset_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_reset_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_reset_pressed")
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
	_lib._dispatch("interface-_on_reset_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_reset_pressed-callback", [])

func _on_accept_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_accept_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_accept_pressed")
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
	_lib._dispatch("interface-_on_accept_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_accept_pressed-callback", [])

func _on_supply_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_supply_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_supply_pressed")
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
	_lib._dispatch("interface-_on_supply_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_supply_pressed-callback", [])

func _on_tasks_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-_on_tasks_pressed-pre", [])
	var _repl = _lib._get_hooks("interface-_on_tasks_pressed")
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
	_lib._dispatch("interface-_on_tasks_pressed-post", [])
	_lib._dispatch_deferred("interface-_on_tasks_pressed-callback", [])

func InitializeTasks():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-initializetasks-pre", [])
	var _repl = _lib._get_hooks("interface-initializetasks")
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
	_lib._dispatch("interface-initializetasks-post", [])
	_lib._dispatch_deferred("interface-initializetasks-callback", [])

func StartInput(target):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(target)
		return
	_lib._caller = self
	_lib._dispatch("interface-startinput-pre", [target])
	var _repl = _lib._get_hooks("interface-startinput")
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
	_lib._dispatch("interface-startinput-post", [target])
	_lib._dispatch_deferred("interface-startinput-callback", [target])

func ResetInput():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-resetinput-pre", [])
	var _repl = _lib._get_hooks("interface-resetinput")
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
	_lib._dispatch("interface-resetinput-post", [])
	_lib._dispatch_deferred("interface-resetinput-callback", [])

func InputSelection():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-inputselection-pre", [])
	var _repl = _lib._get_hooks("interface-inputselection")
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
	_lib._dispatch("interface-inputselection-post", [])
	_lib._dispatch_deferred("interface-inputselection-callback", [])

func Complete(data: Resource):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(data)
		return
	_lib._caller = self
	_lib._dispatch("interface-complete-pre", [data])
	var _repl = _lib._get_hooks("interface-complete")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([data])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(data)
	else:
		super(data)
	_lib._dispatch("interface-complete-post", [data])
	_lib._dispatch_deferred("interface-complete-callback", [data])

func RepairInputItems():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-repairinputitems-pre", [])
	var _repl = _lib._get_hooks("interface-repairinputitems")
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
	_lib._dispatch("interface-repairinputitems-post", [])
	_lib._dispatch_deferred("interface-repairinputitems-callback", [])

func DestroyInputItems(data: Resource):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(data)
		return
	_lib._caller = self
	_lib._dispatch("interface-destroyinputitems-pre", [data])
	var _repl = _lib._get_hooks("interface-destroyinputitems")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([data])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(data)
	else:
		super(data)
	_lib._dispatch("interface-destroyinputitems-post", [data])
	_lib._dispatch_deferred("interface-destroyinputitems-callback", [data])

func GetOutputItems():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-getoutputitems-pre", [])
	var _repl = _lib._get_hooks("interface-getoutputitems")
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
	_lib._dispatch("interface-getoutputitems-post", [])
	_lib._dispatch_deferred("interface-getoutputitems-callback", [])

func LoadGridItem(slotData, targetGrid, gridPosition):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData, targetGrid, gridPosition)
		return
	_lib._caller = self
	_lib._dispatch("interface-loadgriditem-pre", [slotData, targetGrid, gridPosition])
	var _repl = _lib._get_hooks("interface-loadgriditem")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData, targetGrid, gridPosition])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData, targetGrid, gridPosition)
	else:
		super(slotData, targetGrid, gridPosition)
	_lib._dispatch("interface-loadgriditem-post", [slotData, targetGrid, gridPosition])
	_lib._dispatch_deferred("interface-loadgriditem-callback", [slotData, targetGrid, gridPosition])

func LoadSlotItem(slotData, slotName):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData, slotName)
		return
	_lib._caller = self
	_lib._dispatch("interface-loadslotitem-pre", [slotData, slotName])
	var _repl = _lib._get_hooks("interface-loadslotitem")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData, slotName])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData, slotName)
	else:
		super(slotData, slotName)
	_lib._dispatch("interface-loadslotitem-post", [slotData, slotName])
	_lib._dispatch_deferred("interface-loadslotitem-callback", [slotData, slotName])

func Create(slotData, targetGrid, useDrop):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(slotData, targetGrid, useDrop)
	_lib._caller = self
	_lib._dispatch("interface-create-pre", [slotData, targetGrid, useDrop])
	var _result
	var _repl = _lib._get_hooks("interface-create")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([slotData, targetGrid, useDrop])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(slotData, targetGrid, useDrop)
	else:
		_result = super(slotData, targetGrid, useDrop)
	_lib._dispatch("interface-create-post", [slotData, targetGrid, useDrop])
	_lib._dispatch_deferred("interface-create-callback", [slotData, targetGrid, useDrop])
	return _result

func AutoStack(slotData, targetGrid):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(slotData, targetGrid)
	_lib._caller = self
	_lib._dispatch("interface-autostack-pre", [slotData, targetGrid])
	var _result
	var _repl = _lib._get_hooks("interface-autostack")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([slotData, targetGrid])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(slotData, targetGrid)
	else:
		_result = super(slotData, targetGrid)
	_lib._dispatch("interface-autostack-post", [slotData, targetGrid])
	_lib._dispatch_deferred("interface-autostack-callback", [slotData, targetGrid])
	return _result

func Grab():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-grab-pre", [])
	var _repl = _lib._get_hooks("interface-grab")
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
	_lib._dispatch("interface-grab-post", [])
	_lib._dispatch_deferred("interface-grab-callback", [])

func Release():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-release-pre", [])
	var _repl = _lib._get_hooks("interface-release")
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
	_lib._dispatch("interface-release-post", [])
	_lib._dispatch_deferred("interface-release-callback", [])

func Return(target):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(target)
		return
	_lib._caller = self
	_lib._dispatch("interface-return-pre", [target])
	var _repl = _lib._get_hooks("interface-return")
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
	_lib._dispatch("interface-return-post", [target])
	_lib._dispatch_deferred("interface-return-callback", [target])

func Rotate(target):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(target)
		return
	_lib._caller = self
	_lib._dispatch("interface-rotate-pre", [target])
	var _repl = _lib._get_hooks("interface-rotate")
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
	_lib._dispatch("interface-rotate-post", [target])
	_lib._dispatch_deferred("interface-rotate-callback", [target])

func Drop(target):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(target)
		return
	_lib._caller = self
	_lib._dispatch("interface-drop-pre", [target])
	var _repl = _lib._get_hooks("interface-drop")
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
	_lib._dispatch("interface-drop-post", [target])
	_lib._dispatch_deferred("interface-drop-callback", [target])

func Drag():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-drag-pre", [])
	var _repl = _lib._get_hooks("interface-drag")
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
	_lib._dispatch("interface-drag-post", [])
	_lib._dispatch_deferred("interface-drag-callback", [])

func Equip(targetItem, targetSlot):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetItem, targetSlot)
		return
	_lib._caller = self
	_lib._dispatch("interface-equip-pre", [targetItem, targetSlot])
	var _repl = _lib._get_hooks("interface-equip")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetItem, targetSlot])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetItem, targetSlot)
	else:
		super(targetItem, targetSlot)
	_lib._dispatch("interface-equip-post", [targetItem, targetSlot])
	_lib._dispatch_deferred("interface-equip-callback", [targetItem, targetSlot])

func Unequip(targetSlot):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(targetSlot)
	_lib._caller = self
	_lib._dispatch("interface-unequip-pre", [targetSlot])
	var _result
	var _repl = _lib._get_hooks("interface-unequip")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([targetSlot])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(targetSlot)
	else:
		_result = super(targetSlot)
	_lib._dispatch("interface-unequip-post", [targetSlot])
	_lib._dispatch_deferred("interface-unequip-callback", [targetSlot])
	return _result

func GridSwap():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-gridswap-pre", [])
	var _repl = _lib._get_hooks("interface-gridswap")
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
	_lib._dispatch("interface-gridswap-post", [])
	_lib._dispatch_deferred("interface-gridswap-callback", [])

func SlotSwap():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-slotswap-pre", [])
	var _repl = _lib._get_hooks("interface-slotswap")
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
	_lib._dispatch("interface-slotswap-post", [])
	_lib._dispatch_deferred("interface-slotswap-callback", [])

func Combine(targetItem):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetItem)
		return
	_lib._caller = self
	_lib._dispatch("interface-combine-pre", [targetItem])
	var _repl = _lib._get_hooks("interface-combine")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetItem])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetItem)
	else:
		super(targetItem)
	_lib._dispatch("interface-combine-post", [targetItem])
	_lib._dispatch_deferred("interface-combine-callback", [targetItem])

func FastTransfer():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-fasttransfer-pre", [])
	var _repl = _lib._get_hooks("interface-fasttransfer")
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
	_lib._dispatch("interface-fasttransfer-post", [])
	_lib._dispatch_deferred("interface-fasttransfer-callback", [])

func FastEquip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-fastequip-pre", [])
	var _repl = _lib._get_hooks("interface-fastequip")
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
	_lib._dispatch("interface-fastequip-post", [])
	_lib._dispatch_deferred("interface-fastequip-callback", [])

func FastDrop():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-fastdrop-pre", [])
	var _repl = _lib._get_hooks("interface-fastdrop")
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
	_lib._dispatch("interface-fastdrop-post", [])
	_lib._dispatch_deferred("interface-fastdrop-callback", [])

func ShowContext():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-showcontext-pre", [])
	var _repl = _lib._get_hooks("interface-showcontext")
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
	_lib._dispatch("interface-showcontext-post", [])
	_lib._dispatch_deferred("interface-showcontext-callback", [])

func HideContext():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-hidecontext-pre", [])
	var _repl = _lib._get_hooks("interface-hidecontext")
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
	_lib._dispatch("interface-hidecontext-post", [])
	_lib._dispatch_deferred("interface-hidecontext-callback", [])

func ContextEquip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contextequip-pre", [])
	var _repl = _lib._get_hooks("interface-contextequip")
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
	_lib._dispatch("interface-contextequip-post", [])
	_lib._dispatch_deferred("interface-contextequip-callback", [])

func ContextUnequip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contextunequip-pre", [])
	var _repl = _lib._get_hooks("interface-contextunequip")
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
	_lib._dispatch("interface-contextunequip-post", [])
	_lib._dispatch_deferred("interface-contextunequip-callback", [])

func ContextSplit():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contextsplit-pre", [])
	var _repl = _lib._get_hooks("interface-contextsplit")
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
	_lib._dispatch("interface-contextsplit-post", [])
	_lib._dispatch_deferred("interface-contextsplit-callback", [])

func ContextTake():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contexttake-pre", [])
	var _repl = _lib._get_hooks("interface-contexttake")
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
	_lib._dispatch("interface-contexttake-post", [])
	_lib._dispatch_deferred("interface-contexttake-callback", [])

func ContextDrop():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contextdrop-pre", [])
	var _repl = _lib._get_hooks("interface-contextdrop")
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
	_lib._dispatch("interface-contextdrop-post", [])
	_lib._dispatch_deferred("interface-contextdrop-callback", [])

func ContextPlace():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contextplace-pre", [])
	var _repl = _lib._get_hooks("interface-contextplace")
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
	_lib._dispatch("interface-contextplace-post", [])
	_lib._dispatch_deferred("interface-contextplace-callback", [])

func ContextDestroy():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contextdestroy-pre", [])
	var _repl = _lib._get_hooks("interface-contextdestroy")
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
	_lib._dispatch("interface-contextdestroy-post", [])
	_lib._dispatch_deferred("interface-contextdestroy-callback", [])

func ContextTransfer():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contexttransfer-pre", [])
	var _repl = _lib._get_hooks("interface-contexttransfer")
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
	_lib._dispatch("interface-contexttransfer-post", [])
	_lib._dispatch_deferred("interface-contexttransfer-callback", [])

func ContextSleep():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contextsleep-pre", [])
	var _repl = _lib._get_hooks("interface-contextsleep")
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
	_lib._dispatch("interface-contextsleep-post", [])
	_lib._dispatch_deferred("interface-contextsleep-callback", [])

func ContextRemove(nestedIndex):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(nestedIndex)
		return
	_lib._caller = self
	_lib._dispatch("interface-contextremove-pre", [nestedIndex])
	var _repl = _lib._get_hooks("interface-contextremove")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([nestedIndex])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(nestedIndex)
	else:
		super(nestedIndex)
	_lib._dispatch("interface-contextremove-post", [nestedIndex])
	_lib._dispatch_deferred("interface-contextremove-callback", [nestedIndex])

func ContextUse():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contextuse-pre", [])
	var _repl = _lib._get_hooks("interface-contextuse")
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
	_lib._dispatch("interface-contextuse-post", [])
	_lib._dispatch_deferred("interface-contextuse-callback", [])

func ContextUnload():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-contextunload-pre", [])
	var _repl = _lib._get_hooks("interface-contextunload")
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
	_lib._dispatch("interface-contextunload-post", [])
	_lib._dispatch_deferred("interface-contextunload-callback", [])

func Use(targetItem, targetGrid):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetItem, targetGrid)
		return
	_lib._caller = self
	_lib._dispatch("interface-use-pre", [targetItem, targetGrid])
	var _repl = _lib._get_hooks("interface-use")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetItem, targetGrid])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetItem, targetGrid)
	else:
		super(targetItem, targetGrid)
	_lib._dispatch("interface-use-post", [targetItem, targetGrid])
	_lib._dispatch_deferred("interface-use-callback", [targetItem, targetGrid])

func Charge(targetItem, sourceItem):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetItem, sourceItem)
		return
	_lib._caller = self
	_lib._dispatch("interface-charge-pre", [targetItem, sourceItem])
	var _repl = _lib._get_hooks("interface-charge")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetItem, sourceItem])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetItem, sourceItem)
	else:
		super(targetItem, sourceItem)
	_lib._dispatch("interface-charge-post", [targetItem, sourceItem])
	_lib._dispatch_deferred("interface-charge-callback", [targetItem, sourceItem])

func Load(targetItem, sourceItem):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetItem, sourceItem)
		return
	_lib._caller = self
	_lib._dispatch("interface-load-pre", [targetItem, sourceItem])
	var _repl = _lib._get_hooks("interface-load")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetItem, sourceItem])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetItem, sourceItem)
	else:
		super(targetItem, sourceItem)
	_lib._dispatch("interface-load-post", [targetItem, sourceItem])
	_lib._dispatch_deferred("interface-load-callback", [targetItem, sourceItem])

func UnloadMagazine(targetItem, targetGrid):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetItem, targetGrid)
		return
	_lib._caller = self
	_lib._dispatch("interface-unloadmagazine-pre", [targetItem, targetGrid])
	var _repl = _lib._get_hooks("interface-unloadmagazine")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetItem, targetGrid])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetItem, targetGrid)
	else:
		super(targetItem, targetGrid)
	_lib._dispatch("interface-unloadmagazine-post", [targetItem, targetGrid])
	_lib._dispatch_deferred("interface-unloadmagazine-callback", [targetItem, targetGrid])

func UnloadWeapon(targetItem, targetGrid):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetItem, targetGrid)
		return
	_lib._caller = self
	_lib._dispatch("interface-unloadweapon-pre", [targetItem, targetGrid])
	var _repl = _lib._get_hooks("interface-unloadweapon")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetItem, targetGrid])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetItem, targetGrid)
	else:
		super(targetItem, targetGrid)
	_lib._dispatch("interface-unloadweapon-post", [targetItem, targetGrid])
	_lib._dispatch_deferred("interface-unloadweapon-callback", [targetItem, targetGrid])

func ChangeMagazine(targetSlot):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetSlot)
		return
	_lib._caller = self
	_lib._dispatch("interface-changemagazine-pre", [targetSlot])
	var _repl = _lib._get_hooks("interface-changemagazine")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetSlot])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetSlot)
	else:
		super(targetSlot)
	_lib._dispatch("interface-changemagazine-post", [targetSlot])
	_lib._dispatch_deferred("interface-changemagazine-callback", [targetSlot])

func PlateCheck(penetration: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(penetration)
	_lib._caller = self
	_lib._dispatch("interface-platecheck-pre", [penetration])
	var _result
	var _repl = _lib._get_hooks("interface-platecheck")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([penetration])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(penetration)
	else:
		_result = super(penetration)
	_lib._dispatch("interface-platecheck-post", [penetration])
	_lib._dispatch_deferred("interface-platecheck-callback", [penetration])
	return _result

func HelmetCheck(penetration: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(penetration)
	_lib._caller = self
	_lib._dispatch("interface-helmetcheck-pre", [penetration])
	var _result
	var _repl = _lib._get_hooks("interface-helmetcheck")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([penetration])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(penetration)
	else:
		_result = super(penetration)
	_lib._dispatch("interface-helmetcheck-post", [penetration])
	_lib._dispatch_deferred("interface-helmetcheck-callback", [penetration])
	return _result

func ItemEffects(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("interface-itemeffects-pre", [delta])
	var _repl = _lib._get_hooks("interface-itemeffects")
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
	_lib._dispatch("interface-itemeffects-post", [delta])
	_lib._dispatch_deferred("interface-itemeffects-callback", [delta])

func Freeze(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("interface-freeze-pre", [delta])
	var _repl = _lib._get_hooks("interface-freeze")
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
	_lib._dispatch("interface-freeze-post", [delta])
	_lib._dispatch_deferred("interface-freeze-callback", [delta])

func Melt(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("interface-melt-pre", [delta])
	var _repl = _lib._get_hooks("interface-melt")
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
	_lib._dispatch("interface-melt-post", [delta])
	_lib._dispatch_deferred("interface-melt-callback", [delta])

func Hover():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-hover-pre", [])
	var _repl = _lib._get_hooks("interface-hover")
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
	_lib._dispatch("interface-hover-post", [])
	_lib._dispatch_deferred("interface-hover-callback", [])

func Highlight():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-highlight-pre", [])
	var _repl = _lib._get_hooks("interface-highlight")
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
	_lib._dispatch("interface-highlight-post", [])
	_lib._dispatch_deferred("interface-highlight-callback", [])

func AddToCatalog(itemData, storage):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(itemData, storage)
		return
	_lib._caller = self
	_lib._dispatch("interface-addtocatalog-pre", [itemData, storage])
	var _repl = _lib._get_hooks("interface-addtocatalog")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([itemData, storage])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(itemData, storage)
	else:
		super(itemData, storage)
	_lib._dispatch("interface-addtocatalog-post", [itemData, storage])
	_lib._dispatch_deferred("interface-addtocatalog-callback", [itemData, storage])

func DisplayTime():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-displaytime-pre", [])
	var _repl = _lib._get_hooks("interface-displaytime")
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
	_lib._dispatch("interface-displaytime-post", [])
	_lib._dispatch_deferred("interface-displaytime-callback", [])

func Sleep(sleepItem):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(sleepItem)
		return
	_lib._caller = self
	_lib._dispatch("interface-sleep-pre", [sleepItem])
	var _repl = _lib._get_hooks("interface-sleep")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([sleepItem])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(sleepItem)
	else:
		super(sleepItem)
	_lib._dispatch("interface-sleep-post", [sleepItem])
	_lib._dispatch_deferred("interface-sleep-callback", [sleepItem])

func UpdateSimulation(sleepTime):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(sleepTime)
		return
	_lib._caller = self
	_lib._dispatch("interface-updatesimulation-pre", [sleepTime])
	var _repl = _lib._get_hooks("interface-updatesimulation")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([sleepTime])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(sleepTime)
	else:
		super(sleepTime)
	_lib._dispatch("interface-updatesimulation-post", [sleepTime])
	_lib._dispatch_deferred("interface-updatesimulation-callback", [sleepTime])

func Reset():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-reset-pre", [])
	var _repl = _lib._get_hooks("interface-reset")
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
	_lib._dispatch("interface-reset-post", [])
	_lib._dispatch_deferred("interface-reset-callback", [])

func CombineCheck(targetItem, combineItem):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(targetItem, combineItem)
	_lib._caller = self
	_lib._dispatch("interface-combinecheck-pre", [targetItem, combineItem])
	var _result
	var _repl = _lib._get_hooks("interface-combinecheck")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([targetItem, combineItem])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(targetItem, combineItem)
	else:
		_result = super(targetItem, combineItem)
	_lib._dispatch("interface-combinecheck-post", [targetItem, combineItem])
	_lib._dispatch_deferred("interface-combinecheck-callback", [targetItem, combineItem])
	return _result

func TetrisCheck(A, B):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(A, B)
	_lib._caller = self
	_lib._dispatch("interface-tetrischeck-pre", [A, B])
	var _result
	var _repl = _lib._get_hooks("interface-tetrischeck")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([A, B])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(A, B)
	else:
		_result = super(A, B)
	_lib._dispatch("interface-tetrischeck-post", [A, B])
	_lib._dispatch_deferred("interface-tetrischeck-callback", [A, B])
	return _result

func GetMagazine(weaponData, weaponSlot, swapMagazine):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(weaponData, weaponSlot, swapMagazine)
	_lib._caller = self
	_lib._dispatch("interface-getmagazine-pre", [weaponData, weaponSlot, swapMagazine])
	var _result
	var _repl = _lib._get_hooks("interface-getmagazine")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([weaponData, weaponSlot, swapMagazine])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(weaponData, weaponSlot, swapMagazine)
	else:
		_result = super(weaponData, weaponSlot, swapMagazine)
	_lib._dispatch("interface-getmagazine-post", [weaponData, weaponSlot, swapMagazine])
	_lib._dispatch_deferred("interface-getmagazine-callback", [weaponData, weaponSlot, swapMagazine])
	return _result

func GetAmmo(weaponData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(weaponData)
	_lib._caller = self
	_lib._dispatch("interface-getammo-pre", [weaponData])
	var _result
	var _repl = _lib._get_hooks("interface-getammo")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([weaponData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(weaponData)
	else:
		_result = super(weaponData)
	_lib._dispatch("interface-getammo-post", [weaponData])
	_lib._dispatch_deferred("interface-getammo-callback", [weaponData])
	return _result

func AutoPlace(targetItem, targetGrid, sourceGrid, usedrop):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(targetItem, targetGrid, sourceGrid, usedrop)
	_lib._caller = self
	_lib._dispatch("interface-autoplace-pre", [targetItem, targetGrid, sourceGrid, usedrop])
	var _result
	var _repl = _lib._get_hooks("interface-autoplace")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([targetItem, targetGrid, sourceGrid, usedrop])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(targetItem, targetGrid, sourceGrid, usedrop)
	else:
		_result = super(targetItem, targetGrid, sourceGrid, usedrop)
	_lib._dispatch("interface-autoplace-post", [targetItem, targetGrid, sourceGrid, usedrop])
	_lib._dispatch_deferred("interface-autoplace-callback", [targetItem, targetGrid, sourceGrid, usedrop])
	return _result

func GetHoverItem():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("interface-gethoveritem-pre", [])
	var _result
	var _repl = _lib._get_hooks("interface-gethoveritem")
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
	_lib._dispatch("interface-gethoveritem-post", [])
	_lib._dispatch_deferred("interface-gethoveritem-callback", [])
	return _result

func GetHoverGrid():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("interface-gethovergrid-pre", [])
	var _result
	var _repl = _lib._get_hooks("interface-gethovergrid")
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
	_lib._dispatch("interface-gethovergrid-post", [])
	_lib._dispatch_deferred("interface-gethovergrid-callback", [])
	return _result

func GetHoverSlot():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("interface-gethoverslot-pre", [])
	var _result
	var _repl = _lib._get_hooks("interface-gethoverslot")
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
	_lib._dispatch("interface-gethoverslot-post", [])
	_lib._dispatch_deferred("interface-gethoverslot-callback", [])
	return _result

func GetHoverEquipment():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("interface-gethoverequipment-pre", [])
	var _result
	var _repl = _lib._get_hooks("interface-gethoverequipment")
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
	_lib._dispatch("interface-gethoverequipment-post", [])
	_lib._dispatch_deferred("interface-gethoverequipment-callback", [])
	return _result

func GetHoverInfo():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("interface-gethoverinfo-pre", [])
	var _result
	var _repl = _lib._get_hooks("interface-gethoverinfo")
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
	_lib._dispatch("interface-gethoverinfo-post", [])
	_lib._dispatch_deferred("interface-gethoverinfo-callback", [])
	return _result

func PlayUse(itemData: ItemData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(itemData)
		return
	_lib._caller = self
	_lib._dispatch("interface-playuse-pre", [itemData])
	var _repl = _lib._get_hooks("interface-playuse")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([itemData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(itemData)
	else:
		super(itemData)
	_lib._dispatch("interface-playuse-post", [itemData])
	_lib._dispatch_deferred("interface-playuse-callback", [itemData])

func PlayDrop():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playdrop-pre", [])
	var _repl = _lib._get_hooks("interface-playdrop")
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
	_lib._dispatch("interface-playdrop-post", [])
	_lib._dispatch_deferred("interface-playdrop-callback", [])

func PlayClick():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playclick-pre", [])
	var _repl = _lib._get_hooks("interface-playclick")
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
	_lib._dispatch("interface-playclick-post", [])
	_lib._dispatch_deferred("interface-playclick-callback", [])

func PlayError():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playerror-pre", [])
	var _repl = _lib._get_hooks("interface-playerror")
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
	_lib._dispatch("interface-playerror-post", [])
	_lib._dispatch_deferred("interface-playerror-callback", [])

func PlayEquip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playequip-pre", [])
	var _repl = _lib._get_hooks("interface-playequip")
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
	_lib._dispatch("interface-playequip-post", [])
	_lib._dispatch_deferred("interface-playequip-callback", [])

func PlayUnequip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playunequip-pre", [])
	var _repl = _lib._get_hooks("interface-playunequip")
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
	_lib._dispatch("interface-playunequip-post", [])
	_lib._dispatch_deferred("interface-playunequip-callback", [])

func PlayAttach():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playattach-pre", [])
	var _repl = _lib._get_hooks("interface-playattach")
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
	_lib._dispatch("interface-playattach-post", [])
	_lib._dispatch_deferred("interface-playattach-callback", [])

func PlayStack():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playstack-pre", [])
	var _repl = _lib._get_hooks("interface-playstack")
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
	_lib._dispatch("interface-playstack-post", [])
	_lib._dispatch_deferred("interface-playstack-callback", [])

func PlayArmorBreak():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playarmorbreak-pre", [])
	var _repl = _lib._get_hooks("interface-playarmorbreak")
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
	_lib._dispatch("interface-playarmorbreak-post", [])
	_lib._dispatch_deferred("interface-playarmorbreak-callback", [])

func PlaySleep():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playsleep-pre", [])
	var _repl = _lib._get_hooks("interface-playsleep")
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
	_lib._dispatch("interface-playsleep-post", [])
	_lib._dispatch_deferred("interface-playsleep-callback", [])

func PlayTransition():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("interface-playtransition-pre", [])
	var _repl = _lib._get_hooks("interface-playtransition")
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
	_lib._dispatch("interface-playtransition-post", [])
	_lib._dispatch_deferred("interface-playtransition-callback", [])

