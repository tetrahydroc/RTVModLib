# RTVModLib 
## A Hook Framework for Road to Vostok

RTVModLib provides a hook system for Road to Vostok mods, allowing multiple mods to intercept and modify game behavior without conflicting with each other.
This is still very much a WIP framework, I would advise against using it until there is a release.

## How It Works

RTVModLib generates wrapper scripts that `extends` each vanilla game script. These wrappers override every method with a dispatch layer that fires pre/post/replace/callback hooks before and after the original method runs. The vanilla script is untouched, mods register hooks by name and RTVModLib handles the rest.

**Two injection mechanisms:**
- **Text-path scripts** - wrapped via `take_over_path` (standard Godot override)
- **UID-loaded scripts** - wrapped via `node_added` signal + property-preserving `set_script()` swap at runtime

This covers virtually every game script. Resource scripts (SlotData, ItemData, save files) are excluded currently because wrapping them breaks serialization, until a workaround is sorted mods should hook the call sites (Interface, Grid, etc.) instead.

## Setup

### Requirements
- [vostok-mod-loader](https://github.com/ametrocavich/vostok-mod-loader) installed
- RTVModLib.vmz in the mods folder

### mod.txt

Your mod must declare which game scripts it needs hooked:

```ini
[mod]
name="My Mod"
id="my-mod"
version="1.0.0"

[autoload]
MyMod="res://MyMod/Main.gd"

[rtvmodlib]
needs="lootcontainer,trader,interface"
```

The `needs` field is a comma-separated list of script names (lowercase, without `.gd`). RTVModLib only loads framework wrappers that at least one mod requests.

### Available Scripts

Every non-Resource game script is hookable. Common ones:

| Script | Key | Description |
|--------|-----|-------------|
| AI.gd | `ai` | Enemy AI behavior, combat, death |
| Interface.gd | `interface` | Inventory, trading, crafting, UI |
| Character.gd | `character` | Player health, damage, status effects |
| Controller.gd | `controller` | Player movement, physics |
| Trader.gd | `trader` | Trader supply, buying, selling |
| LootContainer.gd | `lootcontainer` | Container loot generation |
| WeaponRig.gd | `weaponrig` | Weapon handling, firing, reloading |
| Door.gd | `door` | Door interaction |
| Furniture.gd | `furniture` | Furniture placement |
| Pickup.gd | `pickup` | World item pickups |
| Item.gd | `item` | Inventory item display |
| Grid.gd | `grid` | Inventory grid operations |
| HUD.gd | `hud` | HUD display |
| Loader.gd | `loader` | Save/load operations |
| LootSimulation.gd | `lootsimulation` | Shelter loot simulation |
| Spawner.gd | `spawner` | AI/entity spawning |

See `Main.gd` `KNOWN_FRAMEWORKS` for the complete list.

## Hook API

### Registering Hooks

```gdscript
var _lib = null

func _ready():
    if Engine.has_meta("RTVModLib"):
        var lib = Engine.get_meta("RTVModLib")
        if lib._is_ready:
            _on_lib_ready()
        else:
            lib.frameworks_ready.connect(_on_lib_ready)

func _on_lib_ready():
    _lib = Engine.get_meta("RTVModLib")
    _register_hooks()

func _register_hooks():
    # Pre-hook: runs BEFORE the original method
    _lib.hook("trader-interact-pre", _on_trader_interact)

    # Post-hook: runs AFTER the original method
    _lib.hook("interface-open-post", _on_inventory_opened)

    # Replace hook: replaces the original method (first-wins, only one allowed)
    _lib.hook("lootcontainer-generateloot", _custom_loot_gen)

    # Callback: runs deferred after the original method
    _lib.hook("ai-death-callback", _on_ai_died)
```

### Hook Name Format

```
{script}-{method}-{type}
```

- **script**: lowercase script name without `.gd` (e.g., `trader`, `interface`, `ai`)
- **method**: lowercase method name (e.g., `interact`, `open`, `death`)
- **type**: `pre`, `post`, `callback`, or omitted for replace hooks

Examples:
- `"trader-interact-pre"` — before Trader.Interact()
- `"interface-completedeal-post"` — after Interface.CompleteDeal()
- `"ai-death-callback"` — deferred after AI.Death()
- `"lootcontainer-generateloot"` — replace LootContainer.GenerateLoot()

### Hook Callbacks

**Pre/post/callback hooks** receive the method's arguments:

```gdscript
func _on_trader_interact(arg0 = null, arg1 = null, arg2 = null):
    # arg0, arg1, etc. are the original method's parameters
    print("Player interacted with trader")
```

**Replace hooks** receive the same arguments. Use `skip_super()` to prevent the original method from running:

```gdscript
func _custom_loot_gen(arg0 = null, arg1 = null):
    _lib.skip_super()  # Don't run vanilla GenerateLoot
    # Your custom loot logic here
```

If you don't call `skip_super()`, the original method still runs after your replace hook.

### Priority

Hooks run in priority order (lower number = runs first, default 100):

```gdscript
_lib.hook("ai-death-pre", _high_priority_handler, 10)   # Runs first
_lib.hook("ai-death-pre", _normal_handler, 100)          # Runs second
_lib.hook("ai-death-pre", _low_priority_handler, 200)    # Runs last
```

### Removing Hooks

`hook()` returns an ID you can use to remove it later:

```gdscript
var hook_id = _lib.hook("ai-death-pre", _my_handler)

# Later...
_lib.unhook(hook_id)
```

### Checking Hooks

```gdscript
# Check if any hooks are registered for a name
if _lib.has_hooks("ai-death-pre"):
    pass

# Check if a replace hook exists (useful before registering your own)
if _lib.has_replace("lootcontainer-generateloot"):
    print("Another mod already replaces GenerateLoot")
```

## Complete Example: AI Kill Tracker

```gdscript
extends Node

# Tracks AI kills and prints a summary

var _lib = null
var _kills: Dictionary = {}  # ai_type -> count

func _ready():
    if Engine.has_meta("RTVModLib"):
        var lib = Engine.get_meta("RTVModLib")
        if lib._is_ready:
            _on_lib_ready()
        else:
            lib.frameworks_ready.connect(_on_lib_ready)

func _on_lib_ready():
    _lib = Engine.get_meta("RTVModLib")
    _lib.hook("ai-death-post", _on_ai_death, 50)
    print("Kill Tracker: Loaded")

func _on_ai_death(direction = null, force = null):
    # AI.Death(direction, force) was called — an AI just died
    _kills["total"] = _kills.get("total", 0) + 1
    print("Kills: " + str(_kills["total"]))
```

**mod.txt:**
```ini
[mod]
name="Kill Tracker"
id="kill-tracker"
version="1.0.0"

[autoload]
KillTracker="res://KillTracker/Main.gd"

[rtvmodlib]
needs="ai"
```

## Complete Example: Custom Trader Prices

```gdscript
extends Node

# Doubles all trader prices

var _lib = null

func _ready():
    if Engine.has_meta("RTVModLib"):
        var lib = Engine.get_meta("RTVModLib")
        if lib._is_ready:
            _on_lib_ready()
        else:
            lib.frameworks_ready.connect(_on_lib_ready)

func _on_lib_ready():
    _lib = Engine.get_meta("RTVModLib")
    _lib.hook("interface-calculatedeal-post", _modify_prices)

func _modify_prices():
    # Runs after CalculateDeal — modify the displayed values
    var scene = get_tree().current_scene
    var interface = scene.get_node_or_null("Core/UI/Interface")
    if interface and interface.requestValue:
        var current = int(interface.requestValue.text)
        interface.requestValue.text = str(current * 2)
```

## Complete Example: Replace Hook with Fallback

```gdscript
extends Node

# Custom loot generation that falls back to vanilla if conditions aren't met

var _lib = null

func _ready():
    if Engine.has_meta("RTVModLib"):
        var lib = Engine.get_meta("RTVModLib")
        if lib._is_ready:
            _on_lib_ready()
        else:
            lib.frameworks_ready.connect(_on_lib_ready)

func _on_lib_ready():
    _lib = Engine.get_meta("RTVModLib")
    var id = _lib.hook("lootcontainer-generateloot", _custom_loot)
        if id == -1:
            # Another mod already owns this replace hook
            print("MyMod: GenerateLoot replace hook rejected, using pre/post instead")
            _lib.hook("lootcontainer-generateloot-post", _modify_loot_after)

func _custom_loot():
    if some_condition:
        _lib.skip_super()  # Skip vanilla loot gen
        # Generate custom loot...
    # If skip_super() not called, vanilla GenerateLoot runs normally
```

## Notes

- **Hook registration timing**: Connect to the `frameworks_ready` signal on RTVModLib to know when hooks can be registered. Check `_is_ready` in case the signal already fired before your mod loaded.
- **Replace hooks are first-wins**: Only one mod can own a replace hook for a given method. Check with `has_replace()` before registering.
- **Resource scripts are not hookable**: SlotData, ItemData, GameData, save files, etc. extend Resource and cannot be wrapped without breaking serialization. Until a workaround is determined, hook the methods that use them (Interface, Grid, Loader) instead.
- **Multiple mods can coexist**: Pre/post/callback hooks stack and all registered hooks fire in priority order. Only replace hooks are exclusive.
- **Priority ordering**: Lower number = higher priority = runs first. Default is 100. Use 10-50 for high priority, 100 for normal, 200+ for low priority.
