extends "res://Scripts/Spawner.gd"
var _rtv_ready_done = false

func _ready():
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		if not _rtv_ready_done:
			super()
			_rtv_ready_done = true
		return
	_lib._caller = self
	_lib._dispatch("spawner-_ready-pre", [])
	var _repl = _lib._get_hooks("spawner-_ready")
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
	_lib._dispatch("spawner-_ready-post", [])
	_lib._dispatch_deferred("spawner-_ready-callback", [])

func ExecuteGenerate(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("spawner-executegenerate-pre", [_value])
	var _repl = _lib._get_hooks("spawner-executegenerate")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("spawner-executegenerate-post", [_value])
	_lib._dispatch_deferred("spawner-executegenerate-callback", [_value])

func ExecuteClear(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("spawner-executeclear-pre", [_value])
	var _repl = _lib._get_hooks("spawner-executeclear")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("spawner-executeclear-post", [_value])
	_lib._dispatch_deferred("spawner-executeclear-callback", [_value])

func ExecuteFinalizeTrees(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("spawner-executefinalizetrees-pre", [_value])
	var _repl = _lib._get_hooks("spawner-executefinalizetrees")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("spawner-executefinalizetrees-post", [_value])
	_lib._dispatch_deferred("spawner-executefinalizetrees-callback", [_value])

func ExecuteTreeRecovery(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("spawner-executetreerecovery-pre", [_value])
	var _repl = _lib._get_hooks("spawner-executetreerecovery")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("spawner-executetreerecovery-post", [_value])
	_lib._dispatch_deferred("spawner-executetreerecovery-callback", [_value])

func ExecuteTreeReduction(_value: bool):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(_value)
		return
	_lib._caller = self
	_lib._dispatch("spawner-executetreereduction-pre", [_value])
	var _repl = _lib._get_hooks("spawner-executetreereduction")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([_value])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(_value)
	else:
		super(_value)
	_lib._dispatch("spawner-executetreereduction-post", [_value])
	_lib._dispatch_deferred("spawner-executetreereduction-callback", [_value])

func SpawnScene(surfaceTransform: Transform3D, sceneData: SpawnerSceneData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(surfaceTransform, sceneData)
		return
	_lib._caller = self
	_lib._dispatch("spawner-spawnscene-pre", [surfaceTransform, sceneData])
	var _repl = _lib._get_hooks("spawner-spawnscene")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([surfaceTransform, sceneData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(surfaceTransform, sceneData)
	else:
		super(surfaceTransform, sceneData)
	_lib._dispatch("spawner-spawnscene-post", [surfaceTransform, sceneData])
	_lib._dispatch_deferred("spawner-spawnscene-callback", [surfaceTransform, sceneData])

func CreateChunkNode(key: String, chunkDict: Dictionary, chunkData: SpawnerChunkData):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(key, chunkDict, chunkData)
		return
	_lib._caller = self
	_lib._dispatch("spawner-createchunknode-pre", [key, chunkDict, chunkData])
	var _repl = _lib._get_hooks("spawner-createchunknode")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([key, chunkDict, chunkData])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(key, chunkDict, chunkData)
	else:
		super(key, chunkDict, chunkData)
	_lib._dispatch("spawner-createchunknode-post", [key, chunkDict, chunkData])
	_lib._dispatch_deferred("spawner-createchunknode-callback", [key, chunkDict, chunkData])

func BuildMultimesh(transforms: Array, meshResource: Mesh, origin: Vector3, material: Material):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(transforms, meshResource, origin, material)
	_lib._caller = self
	_lib._dispatch("spawner-buildmultimesh-pre", [transforms, meshResource, origin, material])
	var _result
	var _repl = _lib._get_hooks("spawner-buildmultimesh")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([transforms, meshResource, origin, material])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(transforms, meshResource, origin, material)
	else:
		_result = super(transforms, meshResource, origin, material)
	_lib._dispatch("spawner-buildmultimesh-post", [transforms, meshResource, origin, material])
	_lib._dispatch_deferred("spawner-buildmultimesh-callback", [transforms, meshResource, origin, material])
	return _result

func CreateCollider(parent: Node3D, transforms: Array, meshResource: Mesh, colliderName: String, layer: int, surfaceName: String):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(parent, transforms, meshResource, colliderName, layer, surfaceName)
		return
	_lib._caller = self
	_lib._dispatch("spawner-createcollider-pre", [parent, transforms, meshResource, colliderName, layer, surfaceName])
	var _repl = _lib._get_hooks("spawner-createcollider")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([parent, transforms, meshResource, colliderName, layer, surfaceName])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(parent, transforms, meshResource, colliderName, layer, surfaceName)
	else:
		super(parent, transforms, meshResource, colliderName, layer, surfaceName)
	_lib._dispatch("spawner-createcollider-post", [parent, transforms, meshResource, colliderName, layer, surfaceName])
	_lib._dispatch_deferred("spawner-createcollider-callback", [parent, transforms, meshResource, colliderName, layer, surfaceName])

func CreateMergedMeshMixed(parent: Node3D, transforms: Array, meshResources: Array, material: Material, meshName: String):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(parent, transforms, meshResources, material, meshName)
		return
	_lib._caller = self
	_lib._dispatch("spawner-createmergedmeshmixed-pre", [parent, transforms, meshResources, material, meshName])
	var _repl = _lib._get_hooks("spawner-createmergedmeshmixed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([parent, transforms, meshResources, material, meshName])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(parent, transforms, meshResources, material, meshName)
	else:
		super(parent, transforms, meshResources, material, meshName)
	_lib._dispatch("spawner-createmergedmeshmixed-post", [parent, transforms, meshResources, material, meshName])
	_lib._dispatch_deferred("spawner-createmergedmeshmixed-callback", [parent, transforms, meshResources, material, meshName])

func CreateMergedColliderMixed(parent: Node3D, transforms: Array, meshResources: Array, colliderName: String, layer: int, surfaceName: String):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(parent, transforms, meshResources, colliderName, layer, surfaceName)
		return
	_lib._caller = self
	_lib._dispatch("spawner-createmergedcollidermixed-pre", [parent, transforms, meshResources, colliderName, layer, surfaceName])
	var _repl = _lib._get_hooks("spawner-createmergedcollidermixed")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([parent, transforms, meshResources, colliderName, layer, surfaceName])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(parent, transforms, meshResources, colliderName, layer, surfaceName)
	else:
		super(parent, transforms, meshResources, colliderName, layer, surfaceName)
	_lib._dispatch("spawner-createmergedcollidermixed-post", [parent, transforms, meshResources, colliderName, layer, surfaceName])
	_lib._dispatch_deferred("spawner-createmergedcollidermixed-callback", [parent, transforms, meshResources, colliderName, layer, surfaceName])

func PerimeterCheck(hit: Dictionary, spaceState: PhysicsDirectSpaceState3D):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(hit, spaceState)
	_lib._caller = self
	_lib._dispatch("spawner-perimetercheck-pre", [hit, spaceState])
	var _result
	var _repl = _lib._get_hooks("spawner-perimetercheck")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([hit, spaceState])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(hit, spaceState)
	else:
		_result = super(hit, spaceState)
	_lib._dispatch("spawner-perimetercheck-post", [hit, spaceState])
	_lib._dispatch_deferred("spawner-perimetercheck-callback", [hit, spaceState])
	return _result

func GetBlockerMasks(groupName: String, blockerList: Array[Rect2]):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(groupName, blockerList)
		return
	_lib._caller = self
	_lib._dispatch("spawner-getblockermasks-pre", [groupName, blockerList])
	var _repl = _lib._get_hooks("spawner-getblockermasks")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([groupName, blockerList])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(groupName, blockerList)
	else:
		super(groupName, blockerList)
	_lib._dispatch("spawner-getblockermasks-post", [groupName, blockerList])
	_lib._dispatch_deferred("spawner-getblockermasks-callback", [groupName, blockerList])

func PoisonFilter(candidates: Array, minDist: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(candidates, minDist)
	_lib._caller = self
	_lib._dispatch("spawner-poisonfilter-pre", [candidates, minDist])
	var _result
	var _repl = _lib._get_hooks("spawner-poisonfilter")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([candidates, minDist])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(candidates, minDist)
	else:
		_result = super(candidates, minDist)
	_lib._dispatch("spawner-poisonfilter-post", [candidates, minDist])
	_lib._dispatch_deferred("spawner-poisonfilter-callback", [candidates, minDist])
	return _result

func RandomBarycentric(v0: Vector3, v1: Vector3, v2: Vector3):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(v0, v1, v2)
	_lib._caller = self
	_lib._dispatch("spawner-randombarycentric-pre", [v0, v1, v2])
	var _result
	var _repl = _lib._get_hooks("spawner-randombarycentric")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([v0, v1, v2])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(v0, v1, v2)
	else:
		_result = super(v0, v1, v2)
	_lib._dispatch("spawner-randombarycentric-post", [v0, v1, v2])
	_lib._dispatch_deferred("spawner-randombarycentric-callback", [v0, v1, v2])
	return _result

func GetSurfaceTransform(pos: Vector3, normal: Vector3):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(pos, normal)
	_lib._caller = self
	_lib._dispatch("spawner-getsurfacetransform-pre", [pos, normal])
	var _result
	var _repl = _lib._get_hooks("spawner-getsurfacetransform")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([pos, normal])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(pos, normal)
	else:
		_result = super(pos, normal)
	_lib._dispatch("spawner-getsurfacetransform-post", [pos, normal])
	_lib._dispatch_deferred("spawner-getsurfacetransform-callback", [pos, normal])
	return _result

func ProcessMultimeshData(pos: Vector3, surfaceTransform: Transform3D, dataMap: Dictionary, chunkSize: float):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(pos, surfaceTransform, dataMap, chunkSize)
		return
	_lib._caller = self
	_lib._dispatch("spawner-processmultimeshdata-pre", [pos, surfaceTransform, dataMap, chunkSize])
	var _repl = _lib._get_hooks("spawner-processmultimeshdata")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([pos, surfaceTransform, dataMap, chunkSize])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(pos, surfaceTransform, dataMap, chunkSize)
	else:
		super(pos, surfaceTransform, dataMap, chunkSize)
	_lib._dispatch("spawner-processmultimeshdata-post", [pos, surfaceTransform, dataMap, chunkSize])
	_lib._dispatch_deferred("spawner-processmultimeshdata-callback", [pos, surfaceTransform, dataMap, chunkSize])

func RealignToNormal(surfaceTransform: Transform3D, normal: Vector3):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		return super(surfaceTransform, normal)
	_lib._caller = self
	_lib._dispatch("spawner-realigntonormal-pre", [surfaceTransform, normal])
	var _result
	var _repl = _lib._get_hooks("spawner-realigntonormal")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		var _replret = _repl[0].callv([surfaceTransform, normal])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if _did_skip:
			_result = _replret
		else:
			_result = super(surfaceTransform, normal)
	else:
		_result = super(surfaceTransform, normal)
	_lib._dispatch("spawner-realigntonormal-post", [surfaceTransform, normal])
	_lib._dispatch_deferred("spawner-realigntonormal-callback", [surfaceTransform, normal])
	return _result

func FoldHierarchy(node: Node):
	var _lib = Engine.get_meta("RTVModLib", null)
	if !_lib:
		super(node)
		return
	_lib._caller = self
	_lib._dispatch("spawner-foldhierarchy-pre", [node])
	var _repl = _lib._get_hooks("spawner-foldhierarchy")
	if _repl.size() > 0:
		var _prev_skip = _lib._skip_super
		_lib._skip_super = false
		_repl[0].callv([node])
		var _did_skip = _lib._skip_super
		_lib._skip_super = _prev_skip
		if !_did_skip:
			super(node)
	else:
		super(node)
	_lib._dispatch("spawner-foldhierarchy-post", [node])
	_lib._dispatch_deferred("spawner-foldhierarchy-callback", [node])

