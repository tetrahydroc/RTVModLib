extends "res://Scripts/ProgressBar.gd"

func Start(craftRecipe: RecipeData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(craftRecipe)
		return
	_lib._caller = self
	_lib._dispatch("progressbar-start-pre", [craftRecipe])
	var _repl = _lib._get_hooks("progressbar-start")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([craftRecipe])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(craftRecipe)
	else:
		super(craftRecipe)
	_lib._dispatch("progressbar-start-post", [craftRecipe])
	_lib._dispatch_deferred("progressbar-start-callback", [craftRecipe])

func _physics_process(_delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_delta)
		return
	_lib._caller = self
	_lib._dispatch("progressbar-_physics_process-pre", [_delta])
	var _repl = _lib._get_hooks("progressbar-_physics_process")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_delta])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_delta)
	else:
		super(_delta)
	_lib._dispatch("progressbar-_physics_process-post", [_delta])
	_lib._dispatch_deferred("progressbar-_physics_process-callback", [_delta])

func _on_timer_timeout():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("progressbar-_on_timer_timeout-pre", [])
	var _repl = _lib._get_hooks("progressbar-_on_timer_timeout")
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
	_lib._dispatch("progressbar-_on_timer_timeout-post", [])
	_lib._dispatch_deferred("progressbar-_on_timer_timeout-callback", [])

func PlayCrafting():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("progressbar-playcrafting-pre", [])
	var _repl = _lib._get_hooks("progressbar-playcrafting")
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
	_lib._dispatch("progressbar-playcrafting-post", [])
	_lib._dispatch_deferred("progressbar-playcrafting-callback", [])

func PlayAttach():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("progressbar-playattach-pre", [])
	var _repl = _lib._get_hooks("progressbar-playattach")
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
	_lib._dispatch("progressbar-playattach-post", [])
	_lib._dispatch_deferred("progressbar-playattach-callback", [])

