extends "res://Scripts/Item.gd"

func Initialize(source, data):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(source, data)
		return
	_lib._caller = self
	_lib._dispatch("item-initialize-pre", [source, data])
	var _repl = _lib._get_hooks("item-initialize")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([source, data])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(source, data)
	else:
		super(source, data)
	_lib._dispatch("item-initialize-post", [source, data])
	_lib._dispatch_deferred("item-initialize-callback", [source, data])

func Display(source, data, showReturns: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(source, data, showReturns)
		return
	_lib._caller = self
	_lib._dispatch("item-display-pre", [source, data, showReturns])
	var _repl = _lib._get_hooks("item-display")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([source, data, showReturns])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(source, data, showReturns)
	else:
		super(source, data, showReturns)
	_lib._dispatch("item-display-post", [source, data, showReturns])
	_lib._dispatch_deferred("item-display-callback", [source, data, showReturns])

func Remove(nestedIndex):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(nestedIndex)
	_lib._caller = self
	_lib._dispatch("item-remove-pre", [nestedIndex])
	var _result
	var _repl = _lib._get_hooks("item-remove")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([nestedIndex])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(nestedIndex)
	else:
		_result = super(nestedIndex)
	_lib._dispatch("item-remove-post", [nestedIndex])
	_lib._dispatch_deferred("item-remove-callback", [nestedIndex])
	return _result

func Combine(itemDragged):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(itemDragged)
		return
	_lib._caller = self
	_lib._dispatch("item-combine-pre", [itemDragged])
	var _repl = _lib._get_hooks("item-combine")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([itemDragged])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(itemDragged)
	else:
		super(itemDragged)
	_lib._dispatch("item-combine-post", [itemDragged])
	_lib._dispatch_deferred("item-combine-callback", [itemDragged])

func CombineSwap(itemDragged):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(itemDragged)
	_lib._caller = self
	_lib._dispatch("item-combineswap-pre", [itemDragged])
	var _result
	var _repl = _lib._get_hooks("item-combineswap")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([itemDragged])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(itemDragged)
	else:
		_result = super(itemDragged)
	_lib._dispatch("item-combineswap-post", [itemDragged])
	_lib._dispatch_deferred("item-combineswap-callback", [itemDragged])
	return _result

func UpdateSprite():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("item-updatesprite-pre", [])
	var _repl = _lib._get_hooks("item-updatesprite")
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
	_lib._dispatch("item-updatesprite-post", [])
	_lib._dispatch_deferred("item-updatesprite-callback", [])

func UpdateDetails():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("item-updatedetails-pre", [])
	var _repl = _lib._get_hooks("item-updatedetails")
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
	_lib._dispatch("item-updatedetails-post", [])
	_lib._dispatch_deferred("item-updatedetails-callback", [])

func UpdateAttachments():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("item-updateattachments-pre", [])
	var _repl = _lib._get_hooks("item-updateattachments")
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
	_lib._dispatch("item-updateattachments-post", [])
	_lib._dispatch_deferred("item-updateattachments-callback", [])

func Value():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("item-value-pre", [])
	var _result
	var _repl = _lib._get_hooks("item-value")
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
	_lib._dispatch("item-value-post", [])
	_lib._dispatch_deferred("item-value-callback", [])
	return _result

func Weight():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super()
	_lib._caller = self
	_lib._dispatch("item-weight-pre", [])
	var _result
	var _repl = _lib._get_hooks("item-weight")
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
	_lib._dispatch("item-weight-post", [])
	_lib._dispatch_deferred("item-weight-callback", [])
	return _result

func State(state):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(state)
		return
	_lib._caller = self
	_lib._dispatch("item-state-pre", [state])
	var _repl = _lib._get_hooks("item-state")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([state])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(state)
	else:
		super(state)
	_lib._dispatch("item-state-post", [state])
	_lib._dispatch_deferred("item-state-callback", [state])

