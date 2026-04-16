extends "res://Scripts/Hitbox.gd"

func ApplyDamage(damage: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(damage)
		return
	_lib._caller = self
	_lib._dispatch("hitbox-applydamage-pre", [damage])
	var _repl = _lib._get_hooks("hitbox-applydamage")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([damage])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(damage)
	else:
		super(damage)
	_lib._dispatch("hitbox-applydamage-post", [damage])
	_lib._dispatch_deferred("hitbox-applydamage-callback", [damage])

