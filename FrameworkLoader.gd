extends "res://Scripts/Loader.gd"

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-_ready-pre", [])
	var _repl = _lib._get_hooks("loader-_ready")
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
	_lib._dispatch("loader-_ready-post", [])
	_lib._dispatch_deferred("loader-_ready-callback", [])

func CreateValidator():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-createvalidator-pre", [])
	var _repl = _lib._get_hooks("loader-createvalidator")
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
	_lib._dispatch("loader-createvalidator-post", [])
	_lib._dispatch_deferred("loader-createvalidator-callback", [])

func ValidateID():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("loader-validateid-pre", [])
	var _result
	var _repl = _lib._get_hooks("loader-validateid")
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
	_lib._dispatch("loader-validateid-post", [])
	_lib._dispatch_deferred("loader-validateid-callback", [])
	return _result

func ValidateShelter():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("loader-validateshelter-pre", [])
	var _result
	var _repl = _lib._get_hooks("loader-validateshelter")
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
	_lib._dispatch("loader-validateshelter-post", [])
	_lib._dispatch_deferred("loader-validateshelter-callback", [])
	return _result

func FormatAll():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-formatall-pre", [])
	var _repl = _lib._get_hooks("loader-formatall")
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
	_lib._dispatch("loader-formatall-post", [])
	_lib._dispatch_deferred("loader-formatall-callback", [])

func FormatSave():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-formatsave-pre", [])
	var _repl = _lib._get_hooks("loader-formatsave")
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
	_lib._dispatch("loader-formatsave-post", [])
	_lib._dispatch_deferred("loader-formatsave-callback", [])

func LoadScene(scene: String):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(scene)
		return
	_lib._dispatch("loader-loadscene-pre", [scene])
	var _repl = _lib._get_hooks("loader-loadscene")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([scene])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(scene)
	else:
		super(scene)
	_lib._dispatch("loader-loadscene-post", [scene])
	_lib._dispatch_deferred("loader-loadscene-callback", [scene])

func LoadSceneRandom():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-loadscenerandom-pre", [])
	var _repl = _lib._get_hooks("loader-loadscenerandom")
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
	_lib._dispatch("loader-loadscenerandom-post", [])
	_lib._dispatch_deferred("loader-loadscenerandom-callback", [])

func NewGame(difficulty, season):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(difficulty, season)
		return
	_lib._dispatch("loader-newgame-pre", [difficulty, season])
	var _repl = _lib._get_hooks("loader-newgame")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([difficulty, season])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(difficulty, season)
	else:
		super(difficulty, season)
	_lib._dispatch("loader-newgame-post", [difficulty, season])
	_lib._dispatch_deferred("loader-newgame-callback", [difficulty, season])

func ResetCharacter():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-resetcharacter-pre", [])
	var _repl = _lib._get_hooks("loader-resetcharacter")
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
	_lib._dispatch("loader-resetcharacter-post", [])
	_lib._dispatch_deferred("loader-resetcharacter-callback", [])

func SaveCharacter():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-savecharacter-pre", [])
	var _repl = _lib._get_hooks("loader-savecharacter")
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
	_lib._dispatch("loader-savecharacter-post", [])
	_lib._dispatch_deferred("loader-savecharacter-callback", [])

func LoadCharacter():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-loadcharacter-pre", [])
	var _repl = _lib._get_hooks("loader-loadcharacter")
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
	_lib._dispatch("loader-loadcharacter-post", [])
	_lib._dispatch_deferred("loader-loadcharacter-callback", [])

func SaveWorld():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-saveworld-pre", [])
	var _repl = _lib._get_hooks("loader-saveworld")
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
	_lib._dispatch("loader-saveworld-post", [])
	_lib._dispatch_deferred("loader-saveworld-callback", [])

func LoadWorld():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-loadworld-pre", [])
	var _repl = _lib._get_hooks("loader-loadworld")
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
	_lib._dispatch("loader-loadworld-post", [])
	_lib._dispatch_deferred("loader-loadworld-callback", [])

func SaveShelter(targetShelter):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetShelter)
		return
	_lib._dispatch("loader-saveshelter-pre", [targetShelter])
	var _repl = _lib._get_hooks("loader-saveshelter")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetShelter])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetShelter)
	else:
		super(targetShelter)
	_lib._dispatch("loader-saveshelter-post", [targetShelter])
	_lib._dispatch_deferred("loader-saveshelter-callback", [targetShelter])

func LoadShelter(targetShelter):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetShelter)
		return
	_lib._dispatch("loader-loadshelter-pre", [targetShelter])
	var _repl = _lib._get_hooks("loader-loadshelter")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetShelter])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetShelter)
	else:
		super(targetShelter)
	_lib._dispatch("loader-loadshelter-post", [targetShelter])
	_lib._dispatch_deferred("loader-loadshelter-callback", [targetShelter])

func CheckShelterState(targetShelter):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(targetShelter)
	_lib._dispatch("loader-checkshelterstate-pre", [targetShelter])
	var _result
	var _repl = _lib._get_hooks("loader-checkshelterstate")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([targetShelter])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(targetShelter)
	else:
		_result = super(targetShelter)
	_lib._dispatch("loader-checkshelterstate-post", [targetShelter])
	_lib._dispatch_deferred("loader-checkshelterstate-callback", [targetShelter])
	return _result

func UnlockShelter(targetShelter):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(targetShelter)
		return
	_lib._dispatch("loader-unlockshelter-pre", [targetShelter])
	var _repl = _lib._get_hooks("loader-unlockshelter")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([targetShelter])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(targetShelter)
	else:
		super(targetShelter)
	_lib._dispatch("loader-unlockshelter-post", [targetShelter])
	_lib._dispatch_deferred("loader-unlockshelter-callback", [targetShelter])

func SaveTrader(trader: String):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(trader)
		return
	_lib._dispatch("loader-savetrader-pre", [trader])
	var _repl = _lib._get_hooks("loader-savetrader")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([trader])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(trader)
	else:
		super(trader)
	_lib._dispatch("loader-savetrader-post", [trader])
	_lib._dispatch_deferred("loader-savetrader-callback", [trader])

func LoadTrader(trader: String):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(trader)
		return
	_lib._dispatch("loader-loadtrader-pre", [trader])
	var _repl = _lib._get_hooks("loader-loadtrader")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([trader])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(trader)
	else:
		super(trader)
	_lib._dispatch("loader-loadtrader-post", [trader])
	_lib._dispatch_deferred("loader-loadtrader-callback", [trader])

func SaveTaskNotes(task: TaskData, add: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(task, add)
		return
	_lib._dispatch("loader-savetasknotes-pre", [task, add])
	var _repl = _lib._get_hooks("loader-savetasknotes")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([task, add])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(task, add)
	else:
		super(task, add)
	_lib._dispatch("loader-savetasknotes-post", [task, add])
	_lib._dispatch_deferred("loader-savetasknotes-callback", [task, add])

func LoadTaskNotes():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._dispatch("loader-loadtasknotes-pre", [])
	var _result
	var _repl = _lib._get_hooks("loader-loadtasknotes")
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
	_lib._dispatch("loader-loadtasknotes-post", [])
	_lib._dispatch_deferred("loader-loadtasknotes-callback", [])
	return _result

func UpdateProgression():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-updateprogression-pre", [])
	var _repl = _lib._get_hooks("loader-updateprogression")
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
	_lib._dispatch("loader-updateprogression-post", [])
	_lib._dispatch_deferred("loader-updateprogression-callback", [])

func Message(text: String, color: Color):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(text, color)
		return
	_lib._dispatch("loader-message-pre", [text, color])
	var _repl = _lib._get_hooks("loader-message")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([text, color])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(text, color)
	else:
		super(text, color)
	_lib._dispatch("loader-message-post", [text, color])
	_lib._dispatch_deferred("loader-message-callback", [text, color])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._dispatch("loader-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("loader-_physics_process")
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
	_lib._dispatch("loader-_physics_process-post", [delta])
	_lib._dispatch_deferred("loader-_physics_process-callback", [delta])

func FadeIn():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-fadein-pre", [])
	var _repl = _lib._get_hooks("loader-fadein")
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
	_lib._dispatch("loader-fadein-post", [])
	_lib._dispatch_deferred("loader-fadein-callback", [])

func FadeOut():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-fadeout-pre", [])
	var _repl = _lib._get_hooks("loader-fadeout")
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
	_lib._dispatch("loader-fadeout-post", [])
	_lib._dispatch_deferred("loader-fadeout-callback", [])

func FadeInLoading():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-fadeinloading-pre", [])
	var _repl = _lib._get_hooks("loader-fadeinloading")
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
	_lib._dispatch("loader-fadeinloading-post", [])
	_lib._dispatch_deferred("loader-fadeinloading-callback", [])

func FadeOutLoading():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-fadeoutloading-pre", [])
	var _repl = _lib._get_hooks("loader-fadeoutloading")
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
	_lib._dispatch("loader-fadeoutloading-post", [])
	_lib._dispatch_deferred("loader-fadeoutloading-callback", [])

func ShowLoadingScreen():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-showloadingscreen-pre", [])
	var _repl = _lib._get_hooks("loader-showloadingscreen")
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
	_lib._dispatch("loader-showloadingscreen-post", [])
	_lib._dispatch_deferred("loader-showloadingscreen-callback", [])

func HideLoadingScreen():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-hideloadingscreen-pre", [])
	var _repl = _lib._get_hooks("loader-hideloadingscreen")
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
	_lib._dispatch("loader-hideloadingscreen-post", [])
	_lib._dispatch_deferred("loader-hideloadingscreen-callback", [])

func ShowOverlay():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-showoverlay-pre", [])
	var _repl = _lib._get_hooks("loader-showoverlay")
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
	_lib._dispatch("loader-showoverlay-post", [])
	_lib._dispatch_deferred("loader-showoverlay-callback", [])

func HideOverlay():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-hideoverlay-pre", [])
	var _repl = _lib._get_hooks("loader-hideoverlay")
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
	_lib._dispatch("loader-hideoverlay-post", [])
	_lib._dispatch_deferred("loader-hideoverlay-callback", [])

func PlayTransition():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-playtransition-pre", [])
	var _repl = _lib._get_hooks("loader-playtransition")
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
	_lib._dispatch("loader-playtransition-post", [])
	_lib._dispatch_deferred("loader-playtransition-callback", [])

func HideCursor():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-hidecursor-pre", [])
	var _repl = _lib._get_hooks("loader-hidecursor")
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
	_lib._dispatch("loader-hidecursor-post", [])
	_lib._dispatch_deferred("loader-hidecursor-callback", [])

func ShowCursor():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-showcursor-pre", [])
	var _repl = _lib._get_hooks("loader-showcursor")
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
	_lib._dispatch("loader-showcursor-post", [])
	_lib._dispatch_deferred("loader-showcursor-callback", [])

func Quit():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._dispatch("loader-quit-pre", [])
	var _repl = _lib._get_hooks("loader-quit")
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
	_lib._dispatch("loader-quit-post", [])
	_lib._dispatch_deferred("loader-quit-callback", [])

