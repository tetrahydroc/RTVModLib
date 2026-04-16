extends "res://Scripts/Character.gd"

func _physics_process(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-_physics_process-pre", [delta])
	var _repl = _lib._get_hooks("character-_physics_process")
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
	_lib._dispatch("character-_physics_process-post", [delta])
	_lib._dispatch_deferred("character-_physics_process-callback", [delta])

func Health(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-health-pre", [delta])
	var _repl = _lib._get_hooks("character-health")
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
	_lib._dispatch("character-health-post", [delta])
	_lib._dispatch_deferred("character-health-callback", [delta])

func Energy(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-energy-pre", [delta])
	var _repl = _lib._get_hooks("character-energy")
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
	_lib._dispatch("character-energy-post", [delta])
	_lib._dispatch_deferred("character-energy-callback", [delta])

func Hydration(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-hydration-pre", [delta])
	var _repl = _lib._get_hooks("character-hydration")
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
	_lib._dispatch("character-hydration-post", [delta])
	_lib._dispatch_deferred("character-hydration-callback", [delta])

func Mental(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-mental-pre", [delta])
	var _repl = _lib._get_hooks("character-mental")
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
	_lib._dispatch("character-mental-post", [delta])
	_lib._dispatch_deferred("character-mental-callback", [delta])

func Temperature(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-temperature-pre", [delta])
	var _repl = _lib._get_hooks("character-temperature")
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
	_lib._dispatch("character-temperature-post", [delta])
	_lib._dispatch_deferred("character-temperature-callback", [delta])

func Cat(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-cat-pre", [delta])
	var _repl = _lib._get_hooks("character-cat")
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
	_lib._dispatch("character-cat-post", [delta])
	_lib._dispatch_deferred("character-cat-callback", [delta])

func Stamina(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-stamina-pre", [delta])
	var _repl = _lib._get_hooks("character-stamina")
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
	_lib._dispatch("character-stamina-post", [delta])
	_lib._dispatch_deferred("character-stamina-callback", [delta])

func Oxygen(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-oxygen-pre", [delta])
	var _repl = _lib._get_hooks("character-oxygen")
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
	_lib._dispatch("character-oxygen-post", [delta])
	_lib._dispatch_deferred("character-oxygen-callback", [delta])

func Clamp():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-clamp-pre", [])
	var _repl = _lib._get_hooks("character-clamp")
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
	_lib._dispatch("character-clamp-post", [])
	_lib._dispatch_deferred("character-clamp-callback", [])

func Consume(item: ItemData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(item)
		return
	_lib._caller = self
	_lib._dispatch("character-consume-pre", [item])
	var _repl = _lib._get_hooks("character-consume")
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
	_lib._dispatch("character-consume-post", [item])
	_lib._dispatch_deferred("character-consume-callback", [item])

func WeaponDamage(damage: int, penetration: int):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(damage, penetration)
		return
	_lib._caller = self
	_lib._dispatch("character-weapondamage-pre", [damage, penetration])
	var _repl = _lib._get_hooks("character-weapondamage")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([damage, penetration])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(damage, penetration)
	else:
		super(damage, penetration)
	_lib._dispatch("character-weapondamage-post", [damage, penetration])
	_lib._dispatch_deferred("character-weapondamage-callback", [damage, penetration])

func ExplosionDamage():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-explosiondamage-pre", [])
	var _repl = _lib._get_hooks("character-explosiondamage")
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
	_lib._dispatch("character-explosiondamage-post", [])
	_lib._dispatch_deferred("character-explosiondamage-callback", [])

func BurnDamage(delta):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(delta)
		return
	_lib._caller = self
	_lib._dispatch("character-burndamage-pre", [delta])
	var _repl = _lib._get_hooks("character-burndamage")
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
	_lib._dispatch("character-burndamage-post", [delta])
	_lib._dispatch_deferred("character-burndamage-callback", [delta])

func FallDamage(distance: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(distance)
		return
	_lib._caller = self
	_lib._dispatch("character-falldamage-pre", [distance])
	var _repl = _lib._get_hooks("character-falldamage")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([distance])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(distance)
	else:
		super(distance)
	_lib._dispatch("character-falldamage-post", [distance])
	_lib._dispatch_deferred("character-falldamage-callback", [distance])

func Death():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-death-pre", [])
	var _repl = _lib._get_hooks("character-death")
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
	_lib._dispatch("character-death-post", [])
	_lib._dispatch_deferred("character-death-callback", [])

func Overweight(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-overweight-pre", [active])
	var _repl = _lib._get_hooks("character-overweight")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-overweight-post", [active])
	_lib._dispatch_deferred("character-overweight-callback", [active])

func Starvation(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-starvation-pre", [active])
	var _repl = _lib._get_hooks("character-starvation")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-starvation-post", [active])
	_lib._dispatch_deferred("character-starvation-callback", [active])

func Dehydration(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-dehydration-pre", [active])
	var _repl = _lib._get_hooks("character-dehydration")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-dehydration-post", [active])
	_lib._dispatch_deferred("character-dehydration-callback", [active])

func Insanity(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-insanity-pre", [active])
	var _repl = _lib._get_hooks("character-insanity")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-insanity-post", [active])
	_lib._dispatch_deferred("character-insanity-callback", [active])

func Frostbite(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-frostbite-pre", [active])
	var _repl = _lib._get_hooks("character-frostbite")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-frostbite-post", [active])
	_lib._dispatch_deferred("character-frostbite-callback", [active])

func Bleeding(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-bleeding-pre", [active])
	var _repl = _lib._get_hooks("character-bleeding")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-bleeding-post", [active])
	_lib._dispatch_deferred("character-bleeding-callback", [active])

func Fracture(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-fracture-pre", [active])
	var _repl = _lib._get_hooks("character-fracture")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-fracture-post", [active])
	_lib._dispatch_deferred("character-fracture-callback", [active])

func Burn(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-burn-pre", [active])
	var _repl = _lib._get_hooks("character-burn")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-burn-post", [active])
	_lib._dispatch_deferred("character-burn-callback", [active])

func Rupture(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-rupture-pre", [active])
	var _repl = _lib._get_hooks("character-rupture")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-rupture-post", [active])
	_lib._dispatch_deferred("character-rupture-callback", [active])

func Headshot(active: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(active)
		return
	_lib._caller = self
	_lib._dispatch("character-headshot-pre", [active])
	var _repl = _lib._get_hooks("character-headshot")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([active])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(active)
	else:
		super(active)
	_lib._dispatch("character-headshot-post", [active])
	_lib._dispatch_deferred("character-headshot-callback", [active])

func PlayDamageAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playdamageaudio-pre", [])
	var _repl = _lib._get_hooks("character-playdamageaudio")
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
	_lib._dispatch("character-playdamageaudio-post", [])
	_lib._dispatch_deferred("character-playdamageaudio-callback", [])

func PlayImpactAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playimpactaudio-pre", [])
	var _repl = _lib._get_hooks("character-playimpactaudio")
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
	_lib._dispatch("character-playimpactaudio-post", [])
	_lib._dispatch_deferred("character-playimpactaudio-callback", [])

func PlayArmorAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playarmoraudio-pre", [])
	var _repl = _lib._get_hooks("character-playarmoraudio")
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
	_lib._dispatch("character-playarmoraudio-post", [])
	_lib._dispatch_deferred("character-playarmoraudio-callback", [])

func PlayDeathAudio():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playdeathaudio-pre", [])
	var _repl = _lib._get_hooks("character-playdeathaudio")
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
	_lib._dispatch("character-playdeathaudio-post", [])
	_lib._dispatch_deferred("character-playdeathaudio-callback", [])

func PlayIndicator():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playindicator-pre", [])
	var _repl = _lib._get_hooks("character-playindicator")
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
	_lib._dispatch("character-playindicator-post", [])
	_lib._dispatch_deferred("character-playindicator-callback", [])

func PlayOverweight():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playoverweight-pre", [])
	var _repl = _lib._get_hooks("character-playoverweight")
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
	_lib._dispatch("character-playoverweight-post", [])
	_lib._dispatch_deferred("character-playoverweight-callback", [])

func PlayStarvation():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playstarvation-pre", [])
	var _repl = _lib._get_hooks("character-playstarvation")
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
	_lib._dispatch("character-playstarvation-post", [])
	_lib._dispatch_deferred("character-playstarvation-callback", [])

func PlayDehydration():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playdehydration-pre", [])
	var _repl = _lib._get_hooks("character-playdehydration")
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
	_lib._dispatch("character-playdehydration-post", [])
	_lib._dispatch_deferred("character-playdehydration-callback", [])

func PlayInsanity():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playinsanity-pre", [])
	var _repl = _lib._get_hooks("character-playinsanity")
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
	_lib._dispatch("character-playinsanity-post", [])
	_lib._dispatch_deferred("character-playinsanity-callback", [])

func PlayFrostbite():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playfrostbite-pre", [])
	var _repl = _lib._get_hooks("character-playfrostbite")
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
	_lib._dispatch("character-playfrostbite-post", [])
	_lib._dispatch_deferred("character-playfrostbite-callback", [])

func PlayBleeding():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playbleeding-pre", [])
	var _repl = _lib._get_hooks("character-playbleeding")
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
	_lib._dispatch("character-playbleeding-post", [])
	_lib._dispatch_deferred("character-playbleeding-callback", [])

func PlayFracture():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playfracture-pre", [])
	var _repl = _lib._get_hooks("character-playfracture")
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
	_lib._dispatch("character-playfracture-post", [])
	_lib._dispatch_deferred("character-playfracture-callback", [])

func PlayBurn():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playburn-pre", [])
	var _repl = _lib._get_hooks("character-playburn")
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
	_lib._dispatch("character-playburn-post", [])
	_lib._dispatch_deferred("character-playburn-callback", [])

func PlayRupture():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playrupture-pre", [])
	var _repl = _lib._get_hooks("character-playrupture")
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
	_lib._dispatch("character-playrupture-post", [])
	_lib._dispatch_deferred("character-playrupture-callback", [])

func PlayHeadshot():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super()
		return
	_lib._caller = self
	_lib._dispatch("character-playheadshot-pre", [])
	var _repl = _lib._get_hooks("character-playheadshot")
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
	_lib._dispatch("character-playheadshot-post", [])
	_lib._dispatch_deferred("character-playheadshot-callback", [])

