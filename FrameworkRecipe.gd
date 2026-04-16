extends "res://Scripts/Recipe.gd"

func Initialize(recipe: RecipeData, source):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(recipe, source)
		return
	_lib._caller = self
	_lib._dispatch("recipe-initialize-pre", [recipe, source])
	var _repl = _lib._get_hooks("recipe-initialize")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([recipe, source])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(recipe, source)
	else:
		super(recipe, source)
	_lib._dispatch("recipe-initialize-post", [recipe, source])
	_lib._dispatch_deferred("recipe-initialize-callback", [recipe, source])

func CreateInputString():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("recipe-createinputstring-pre", [])
	var _result
	var _repl = _lib._get_hooks("recipe-createinputstring")
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
	_lib._dispatch("recipe-createinputstring-post", [])
	_lib._dispatch_deferred("recipe-createinputstring-callback", [])
	return _result

func CreateOutputString():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("recipe-createoutputstring-pre", [])
	var _result
	var _repl = _lib._get_hooks("recipe-createoutputstring")
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
	_lib._dispatch("recipe-createoutputstring-post", [])
	_lib._dispatch_deferred("recipe-createoutputstring-callback", [])
	return _result

func _on_input_toggled(toggled_on: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._caller = self
	_lib._dispatch("recipe-_on_input_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("recipe-_on_input_toggled")
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
	_lib._dispatch("recipe-_on_input_toggled-post", [toggled_on])
	_lib._dispatch_deferred("recipe-_on_input_toggled-callback", [toggled_on])

func _on_complete_pressed():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-_on_complete_pressed-pre", [])
	var _repl = _lib._get_hooks("recipe-_on_complete_pressed")
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
	_lib._dispatch("recipe-_on_complete_pressed-post", [])
	_lib._dispatch_deferred("recipe-_on_complete_pressed-callback", [])

func CanInput(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(slotData)
	_lib._caller = self
	_lib._dispatch("recipe-caninput-pre", [slotData])
	var _result
	var _repl = _lib._get_hooks("recipe-caninput")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(slotData)
	else:
		_result = super(slotData)
	_lib._dispatch("recipe-caninput-post", [slotData])
	_lib._dispatch_deferred("recipe-caninput-callback", [slotData])
	return _result

func CanComplete():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-cancomplete-pre", [])
	var _repl = _lib._get_hooks("recipe-cancomplete")
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
	_lib._dispatch("recipe-cancomplete-post", [])
	_lib._dispatch_deferred("recipe-cancomplete-callback", [])

func ResetInput():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-resetinput-pre", [])
	var _repl = _lib._get_hooks("recipe-resetinput")
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
	_lib._dispatch("recipe-resetinput-post", [])
	_lib._dispatch_deferred("recipe-resetinput-callback", [])

func AddInputItem(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._caller = self
	_lib._dispatch("recipe-addinputitem-pre", [slotData])
	var _repl = _lib._get_hooks("recipe-addinputitem")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData)
	else:
		super(slotData)
	_lib._dispatch("recipe-addinputitem-post", [slotData])
	_lib._dispatch_deferred("recipe-addinputitem-callback", [slotData])

func RemoveInputItem(slotData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(slotData)
		return
	_lib._caller = self
	_lib._dispatch("recipe-removeinputitem-pre", [slotData])
	var _repl = _lib._get_hooks("recipe-removeinputitem")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([slotData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(slotData)
	else:
		super(slotData)
	_lib._dispatch("recipe-removeinputitem-post", [slotData])
	_lib._dispatch_deferred("recipe-removeinputitem-callback", [slotData])

func SetProximity():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-setproximity-pre", [])
	var _repl = _lib._get_hooks("recipe-setproximity")
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
	_lib._dispatch("recipe-setproximity-post", [])
	_lib._dispatch_deferred("recipe-setproximity-callback", [])

func UpdateProximity():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-updateproximity-pre", [])
	var _repl = _lib._get_hooks("recipe-updateproximity")
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
	_lib._dispatch("recipe-updateproximity-post", [])
	_lib._dispatch_deferred("recipe-updateproximity-callback", [])

func _on_show_toggled(toggled_on):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(toggled_on)
		return
	_lib._caller = self
	_lib._dispatch("recipe-_on_show_toggled-pre", [toggled_on])
	var _repl = _lib._get_hooks("recipe-_on_show_toggled")
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
	_lib._dispatch("recipe-_on_show_toggled-post", [toggled_on])
	_lib._dispatch_deferred("recipe-_on_show_toggled-callback", [toggled_on])

func Collapse():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-collapse-pre", [])
	var _repl = _lib._get_hooks("recipe-collapse")
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
	_lib._dispatch("recipe-collapse-post", [])
	_lib._dispatch_deferred("recipe-collapse-callback", [])

func Expand():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-expand-pre", [])
	var _repl = _lib._get_hooks("recipe-expand")
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
	_lib._dispatch("recipe-expand-post", [])
	_lib._dispatch_deferred("recipe-expand-callback", [])

func Default():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-default-pre", [])
	var _repl = _lib._get_hooks("recipe-default")
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
	_lib._dispatch("recipe-default-post", [])
	_lib._dispatch_deferred("recipe-default-callback", [])

func Selected():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-selected-pre", [])
	var _repl = _lib._get_hooks("recipe-selected")
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
	_lib._dispatch("recipe-selected-post", [])
	_lib._dispatch_deferred("recipe-selected-callback", [])

func Active():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-active-pre", [])
	var _repl = _lib._get_hooks("recipe-active")
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
	_lib._dispatch("recipe-active-post", [])
	_lib._dispatch_deferred("recipe-active-callback", [])

func PlayClick():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("recipe-playclick-pre", [])
	var _repl = _lib._get_hooks("recipe-playclick")
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
	_lib._dispatch("recipe-playclick-post", [])
	_lib._dispatch_deferred("recipe-playclick-callback", [])

