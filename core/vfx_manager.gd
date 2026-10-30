extends Node

var sparks = preload("res://assets/vfx/VFXMetalImpact.tscn")
var dust_and_splinters = preload("res://assets/vfx/VFXWoodImpact.tscn")

func spawn_sparks(position: Vector3, normal: Vector3):
	var instance = sparks.instantiate()
	get_tree().current_scene.add_child(instance)
	instance.global_position = position
	instance.get_node("GPUParticles3D").emitting = true

func spawn_dust_and_splinters(position: Vector3, normal: Vector3):
	var instance = dust_and_splinters.instantiate()
	get_tree().current_scene.add_child(instance)
	instance.global_position = position
	instance.get_node("Splinters").emitting = true
	instance.get_node("Dust").emitting = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
