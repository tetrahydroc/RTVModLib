extends "res://Scripts/Trader.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("trader-_ready-pre", [])
	var _repl = _lib._get_hooks("trader-_ready")
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
	_lib._dispatch("trader-_ready-post", [])
	_lib._dispatch_deferred("trader-_ready-callback", [])

func Activate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-activate-pre", [])
	var _repl = _lib._get_hooks("trader-activate")
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
	_lib._dispatch("trader-activate-post", [])
	_lib._dispatch_deferred("trader-activate-callback", [])

func Deactivate():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-deactivate-pre", [])
	var _repl = _lib._get_hooks("trader-deactivate")
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
	_lib._dispatch("trader-deactivate-post", [])
	_lib._dispatch_deferred("trader-deactivate-callback", [])

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("trader-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("trader-_physics_process")
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
	_lib._dispatch("trader-_physics_process-post", [delta])
	_lib._dispatch_deferred("trader-_physics_process-callback", [delta])

func Animate(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("trader-animate-pre", [delta])
	var _repl = _lib._get_hooks("trader-animate")
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
	_lib._dispatch("trader-animate-post", [delta])
	_lib._dispatch_deferred("trader-animate-callback", [delta])

func SupplyTimer():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-supplytimer-pre", [])
	var _repl = _lib._get_hooks("trader-supplytimer")
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
	_lib._dispatch("trader-supplytimer-post", [])
	_lib._dispatch_deferred("trader-supplytimer-callback", [])

func FillTraderBucket():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-filltraderbucket-pre", [])
	var _repl = _lib._get_hooks("trader-filltraderbucket")
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
	_lib._dispatch("trader-filltraderbucket-post", [])
	_lib._dispatch_deferred("trader-filltraderbucket-callback", [])

func CreateSupply():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-createsupply-pre", [])
	var _repl = _lib._get_hooks("trader-createsupply")
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
	_lib._dispatch("trader-createsupply-post", [])
	_lib._dispatch_deferred("trader-createsupply-callback", [])

func RemoveFromSupply(item: ItemData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(item)
		return
	_lib._caller = self
	_lib._dispatch("trader-removefromsupply-pre", [item])
	var _repl = _lib._get_hooks("trader-removefromsupply")
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
	_lib._dispatch("trader-removefromsupply-post", [item])
	_lib._dispatch_deferred("trader-removefromsupply-callback", [item])

func Interact():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-interact-pre", [])
	var _repl = _lib._get_hooks("trader-interact")
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
	_lib._dispatch("trader-interact-post", [])
	_lib._dispatch_deferred("trader-interact-callback", [])

func UpdateTooltip():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-updatetooltip-pre", [])
	var _repl = _lib._get_hooks("trader-updatetooltip")
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
	_lib._dispatch("trader-updatetooltip-post", [])
	_lib._dispatch_deferred("trader-updatetooltip-callback", [])

func CompleteTask(taskData: TaskData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(taskData)
		return
	_lib._caller = self
	_lib._dispatch("trader-completetask-pre", [taskData])
	var _repl = _lib._get_hooks("trader-completetask")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([taskData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(taskData)
	else:
		super(taskData)
	_lib._dispatch("trader-completetask-post", [taskData])
	_lib._dispatch_deferred("trader-completetask-callback", [taskData])

func Voices(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("trader-voices-pre", [delta])
	var _repl = _lib._get_hooks("trader-voices")
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
	_lib._dispatch("trader-voices-post", [delta])
	_lib._dispatch_deferred("trader-voices-callback", [delta])

func PlayTraderStart():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-playtraderstart-pre", [])
	var _repl = _lib._get_hooks("trader-playtraderstart")
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
	_lib._dispatch("trader-playtraderstart-post", [])
	_lib._dispatch_deferred("trader-playtraderstart-callback", [])

func PlayTraderEnd():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-playtraderend-pre", [])
	var _repl = _lib._get_hooks("trader-playtraderend")
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
	_lib._dispatch("trader-playtraderend-post", [])
	_lib._dispatch_deferred("trader-playtraderend-callback", [])

func PlayTraderReset():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-playtraderreset-pre", [])
	var _repl = _lib._get_hooks("trader-playtraderreset")
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
	_lib._dispatch("trader-playtraderreset-post", [])
	_lib._dispatch_deferred("trader-playtraderreset-callback", [])

func PlayTraderRandom():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-playtraderrandom-pre", [])
	var _repl = _lib._get_hooks("trader-playtraderrandom")
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
	_lib._dispatch("trader-playtraderrandom-post", [])
	_lib._dispatch_deferred("trader-playtraderrandom-callback", [])

func PlayTraderTrade():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-playtradertrade-pre", [])
	var _repl = _lib._get_hooks("trader-playtradertrade")
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
	_lib._dispatch("trader-playtradertrade-post", [])
	_lib._dispatch_deferred("trader-playtradertrade-callback", [])

func PlayTraderTask():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("trader-playtradertask-pre", [])
	var _repl = _lib._get_hooks("trader-playtradertask")
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
	_lib._dispatch("trader-playtradertask-post", [])
	_lib._dispatch_deferred("trader-playtradertask-callback", [])

