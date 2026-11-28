extends Node

var sparks = preload("res://assets/vfx/VFXMetalImpact.tscn")
var dust_and_splinters = preload("res://assets/vfx/VFXWoodImpact.tscn")
var explosion = preload("res://assets/vfx/VFXExplosion.tscn")

func spawn_sparks(position: Vector3, normal: Vector3):
	_spawn_vfx(sparks, position)

func spawn_dust_and_splinters(position: Vector3, normal: Vector3):
	_spawn_vfx(dust_and_splinters, position)

func spawn_explosion(position: Vector3):
	_spawn_vfx(explosion, position)

func _spawn_vfx(scene: PackedScene, position: Vector3):
	var instance = scene.instantiate()
	get_tree().current_scene.add_child(instance)
	instance.global_position = position
	return instance

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
