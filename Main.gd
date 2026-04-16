extends Node

# Maps framework name (lowercased, e.g. "lootcontainer") -> framework script path.
# Mods declare which frameworks they need in their mod.txt:
#     [rtvmodlib]
#     needs=["LootContainer","Trader"]      (array literal)
#     needs=LootContainer,Trader             (comma string — also accepted)
var KNOWN_FRAMEWORKS: Dictionary = {
	"ai": "res://RTVModLib/FrameworkAI.gd",
	"aipoint": "res://RTVModLib/FrameworkAIPoint.gd",
	"aispawner": "res://RTVModLib/FrameworkAISpawner.gd",
	"actions": "res://RTVModLib/FrameworkActions.gd",
	"audio": "res://RTVModLib/FrameworkAudio.gd",
	"audioinstance2d": "res://RTVModLib/FrameworkAudioInstance2D.gd",
	"audioinstance3d": "res://RTVModLib/FrameworkAudioInstance3D.gd",
	"btr": "res://RTVModLib/FrameworkBTR.gd",
	"bed": "res://RTVModLib/FrameworkBed.gd",
	"border": "res://RTVModLib/FrameworkBorder.gd",
	"borderpoles": "res://RTVModLib/FrameworkBorderPoles.gd",
	"casa": "res://RTVModLib/FrameworkCASA.gd",
	"cables": "res://RTVModLib/FrameworkCables.gd",
	"cache": "res://RTVModLib/FrameworkCache.gd",
	"camera": "res://RTVModLib/FrameworkCamera.gd",
	"cameranoise": "res://RTVModLib/FrameworkCameraNoise.gd",
	"cat": "res://RTVModLib/FrameworkCat.gd",
	"catbox": "res://RTVModLib/FrameworkCatBox.gd",
	"catfeeder": "res://RTVModLib/FrameworkCatFeeder.gd",
	"catrescue": "res://RTVModLib/FrameworkCatRescue.gd",
	"catvital": "res://RTVModLib/FrameworkCatVital.gd",
	"character": "res://RTVModLib/FrameworkCharacter.gd",
	"compiler": "res://RTVModLib/FrameworkCompiler.gd",
	"condition": "res://RTVModLib/FrameworkCondition.gd",
	"context": "res://RTVModLib/FrameworkContext.gd",
	"controller": "res://RTVModLib/FrameworkController.gd",
	"damage": "res://RTVModLib/FrameworkDamage.gd",
	"database": "res://RTVModLib/FrameworkDatabase.gd",
	"death": "res://RTVModLib/FrameworkDeath.gd",
	"decormode": "res://RTVModLib/FrameworkDecorMode.gd",
	"detector": "res://RTVModLib/FrameworkDetector.gd",
	"door": "res://RTVModLib/FrameworkDoor.gd",
	"dynamicambient": "res://RTVModLib/FrameworkDynamicAmbient.gd",
	"effects": "res://RTVModLib/FrameworkEffects.gd",
	"event": "res://RTVModLib/FrameworkEvent.gd",
	"eventsystem": "res://RTVModLib/FrameworkEventSystem.gd",
	"explosion": "res://RTVModLib/FrameworkExplosion.gd",
	"field": "res://RTVModLib/FrameworkField.gd",
	"fire": "res://RTVModLib/FrameworkFire.gd",
	"fish": "res://RTVModLib/FrameworkFish.gd",
	"fishpool": "res://RTVModLib/FrameworkFishPool.gd",
	"fishingrig": "res://RTVModLib/FrameworkFishingRig.gd",
	"flashlight": "res://RTVModLib/FrameworkFlashlight.gd",
	"flicker": "res://RTVModLib/FrameworkFlicker.gd",
	"follow": "res://RTVModLib/FrameworkFollow.gd",
	"fuel": "res://RTVModLib/FrameworkFuel.gd",
	"furniture": "res://RTVModLib/FrameworkFurniture.gd",
	"gamedata": "res://RTVModLib/FrameworkGameData.gd",
	"grabber": "res://RTVModLib/FrameworkGrabber.gd",
	"grenade": "res://RTVModLib/FrameworkGrenade.gd",
	"grenaderig": "res://RTVModLib/FrameworkGrenadeRig.gd",
	"grid": "res://RTVModLib/FrameworkGrid.gd",
	"hud": "res://RTVModLib/FrameworkHUD.gd",
	"handling": "res://RTVModLib/FrameworkHandling.gd",
	"helicopter": "res://RTVModLib/FrameworkHelicopter.gd",
	"hider": "res://RTVModLib/FrameworkHider.gd",
	"hit": "res://RTVModLib/FrameworkHit.gd",
	"hitbox": "res://RTVModLib/FrameworkHitbox.gd",
	"impulse": "res://RTVModLib/FrameworkImpulse.gd",
	"info": "res://RTVModLib/FrameworkInfo.gd",
	"inputs": "res://RTVModLib/FrameworkInputs.gd",
	"inspect": "res://RTVModLib/FrameworkInspect.gd",
	"instrument": "res://RTVModLib/FrameworkInstrument.gd",
	"interactor": "res://RTVModLib/FrameworkInteractor.gd",
	"interface": "res://RTVModLib/FrameworkInterface.gd",
	"intro": "res://RTVModLib/FrameworkIntro.gd",
	"item": "res://RTVModLib/FrameworkItem.gd",
	"jet": "res://RTVModLib/FrameworkJet.gd",
	"killbox": "res://RTVModLib/FrameworkKillbox.gd",
	"knifehandling": "res://RTVModLib/FrameworkKnifeHandling.gd",
	"kniferig": "res://RTVModLib/FrameworkKnifeRig.gd",
	"laser": "res://RTVModLib/FrameworkLaser.gd",
	"layouts": "res://RTVModLib/FrameworkLayouts.gd",
	"lean": "res://RTVModLib/FrameworkLean.gd",
	"light": "res://RTVModLib/FrameworkLight.gd",
	"linespawner": "res://RTVModLib/FrameworkLineSpawner.gd",
	"loader": "res://RTVModLib/FrameworkLoader.gd",
	"loading": "res://RTVModLib/FrameworkLoading.gd",
	"lootcontainer": "res://RTVModLib/FrameworkLootContainer.gd",
	"lootsimulation": "res://RTVModLib/FrameworkLootSimulation.gd",
	"lure": "res://RTVModLib/FrameworkLure.gd",
	"maptool": "res://RTVModLib/FrameworkMapTool.gd",
	"menu": "res://RTVModLib/FrameworkMenu.gd",
	"message": "res://RTVModLib/FrameworkMessage.gd",
	"mine": "res://RTVModLib/FrameworkMine.gd",
	"missilespawner": "res://RTVModLib/FrameworkMissileSpawner.gd",
	"mode": "res://RTVModLib/FrameworkMode.gd",
	"muzzleflash": "res://RTVModLib/FrameworkMuzzleFlash.gd",
	"nvg": "res://RTVModLib/FrameworkNVG.gd",
	"noise": "res://RTVModLib/FrameworkNoise.gd",
	"optic": "res://RTVModLib/FrameworkOptic.gd",
	"optimizer": "res://RTVModLib/FrameworkOptimizer.gd",
	"pip": "res://RTVModLib/FrameworkPIP.gd",
	"particleinstance": "res://RTVModLib/FrameworkParticleInstance.gd",
	"pickup": "res://RTVModLib/FrameworkPickup.gd",
	"placer": "res://RTVModLib/FrameworkPlacer.gd",
	"polesnapper": "res://RTVModLib/FrameworkPoleSnapper.gd",
	"police": "res://RTVModLib/FrameworkPolice.gd",
	"profiler": "res://RTVModLib/FrameworkProfiler.gd",
	"progress": "res://RTVModLib/FrameworkProgress.gd",
	"progressbar": "res://RTVModLib/FrameworkProgressBar.gd",
	"radio": "res://RTVModLib/FrameworkRadio.gd",
	"ragdoll": "res://RTVModLib/FrameworkRagdoll.gd",
	"recipe": "res://RTVModLib/FrameworkRecipe.gd",
	"recoil": "res://RTVModLib/FrameworkRecoil.gd",
	"rigmanager": "res://RTVModLib/FrameworkRigManager.gd",
	"riser": "res://RTVModLib/FrameworkRiser.gd",
	"rocketgrad": "res://RTVModLib/FrameworkRocketGrad.gd",
	"rockethelicopter": "res://RTVModLib/FrameworkRocketHelicopter.gd",
	"settings": "res://RTVModLib/FrameworkSettings.gd",
	"simulation": "res://RTVModLib/FrameworkSimulation.gd",
	"sorter": "res://RTVModLib/FrameworkSorter.gd",
	"spawner": "res://RTVModLib/FrameworkSpawner.gd",
	"spinner": "res://RTVModLib/FrameworkSpinner.gd",
	"sway": "res://RTVModLib/FrameworkSway.gd",
	"switch": "res://RTVModLib/FrameworkSwitch.gd",
	"task": "res://RTVModLib/FrameworkTask.gd",
	"television": "res://RTVModLib/FrameworkTelevision.gd",
	"tilt": "res://RTVModLib/FrameworkTilt.gd",
	"tooltip": "res://RTVModLib/FrameworkTooltip.gd",
	"track": "res://RTVModLib/FrameworkTrack.gd",
	"trader": "res://RTVModLib/FrameworkTrader.gd",
	"traderdisplay": "res://RTVModLib/FrameworkTraderDisplay.gd",
	"transition": "res://RTVModLib/FrameworkTransition.gd",
	"turntable": "res://RTVModLib/FrameworkTurntable.gd",
	"uimanager": "res://RTVModLib/FrameworkUIManager.gd",
	"uiposition": "res://RTVModLib/FrameworkUIPosition.gd",
	"vital": "res://RTVModLib/FrameworkVital.gd",
	"water": "res://RTVModLib/FrameworkWater.gd",
	"waypoints": "res://RTVModLib/FrameworkWaypoints.gd",
	"weaponrig": "res://RTVModLib/FrameworkWeaponRig.gd",
	"world": "res://RTVModLib/FrameworkWorld.gd",
}

var _swap_map: Dictionary = {}
var _original_scripts: Dictionary = {}  # original_path -> vanilla script ref (for UID identification)
var _swap_count: int = 0
var _needed: Dictionary = {}  # framework_key -> true

func _ready():
	_collect_needed_from_modloader()
	if _needed.is_empty():
		push_warning("RTVModLib: no mod declared [rtvmodlib] needs — nothing to load")
		return

	for key in _needed.keys():
		if not KNOWN_FRAMEWORKS.has(key):
			push_warning("RTVModLib: mod requested unknown framework '" + key + "' — skipped")
			continue
		_register_override(KNOWN_FRAMEWORKS[key])

	get_tree().node_added.connect(_on_node_added)

	print("RTVModLib: loaded " + str(_swap_map.size()) + " framework(s): " + ", ".join(_needed.keys()))

func _collect_needed_from_modloader():
	var ml = get_tree().root.get_node_or_null("ModLoader")
	if ml == null:
		push_error("RTVModLib: /root/ModLoader not found — RTVModLib requires vostok-mod-loader")
		return
	if not "_ui_mod_entries" in ml:
		push_error("RTVModLib: ModLoader._ui_mod_entries not accessible — unsupported loader version")
		return
	var entries: Array = ml._ui_mod_entries
	for entry in entries:
		if not entry.get("enabled", false):
			continue
		var cfg = entry.get("cfg", null)
		if cfg == null:
			continue
		if not cfg.has_section_key("rtvmodlib", "needs"):
			continue
		var raw = cfg.get_value("rtvmodlib", "needs", null)
		_merge_needs(raw, entry.get("mod_name", "?"))

func _merge_needs(raw, mod_name: String):
	var names: Array = []
	if raw is Array or raw is PackedStringArray:
		for v in raw:
			names.append(str(v))
	elif raw is String:
		for part in (raw as String).split(","):
			var trimmed = part.strip_edges()
			if trimmed != "":
				names.append(trimmed)
	else:
		push_warning("RTVModLib: mod '" + mod_name + "' has malformed [rtvmodlib] needs — ignored")
		return
	for n in names:
		_needed[n.to_lower()] = true

func _register_override(modded_path: String):
	var script: Script = load(modded_path)
	if !script:
		print("RTVModLib: Failed to load " + modded_path)
		return
	script.reload()
	var parentScript = script.get_base_script()
	if !parentScript:
		print("RTVModLib: No parent script for " + modded_path)
		return
	var original_path = parentScript.resource_path
	if original_path == "":
		print("RTVModLib: Empty parent path for " + modded_path)
		return
	_original_scripts[original_path] = parentScript
	script.take_over_path(original_path)
	_swap_map[original_path] = script

func _on_node_added(node: Node):
	var node_script = node.get_script()
	if node_script == null:
		return
	var path = node_script.resource_path

	# UID-loaded scripts have empty resource_path. Identify them by
	# comparing against saved vanilla script references.
	if path == "":
		for original_path in _original_scripts:
			if node_script == _original_scripts[original_path]:
				path = original_path
				break
		if path == "":
			return

	if !_swap_map.has(path):
		return
	var framework_script = _swap_map[path]
	if node_script != framework_script:
		call_deferred("_deferred_swap", node, framework_script, path)

func _deferred_swap(node: Node, framework_script: Script, path: String):
	if !is_instance_valid(node):
		return
	if node.get_script() == framework_script:
		return

	# Save ALL property values before script swap (@export, @onready, regular vars)
	var saved_props = {}
	for prop in node.get_property_list():
		var pname = prop["name"]
		if pname == "script" or pname == "":
			continue
		var val = node.get(pname)
		if val != null:
			saved_props[pname] = val

	node.set_script(framework_script)

	# Restore all saved properties
	for pname in saved_props:
		node.set(pname, saved_props[pname])

	# Re-trigger _ready on the new script so hooks can fire
	if node.is_inside_tree():
		node.notification(Node.NOTIFICATION_READY)

	_swap_count += 1
	if _swap_count <= 50:
		print("RTVModLib: Runtime swapped " + path.get_file() + " on " + node.name)

