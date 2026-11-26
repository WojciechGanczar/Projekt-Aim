extends Node3D

@onready var explosion_mesh = $MeshInstance3D

var explosion_duration: float = 0.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	explosion_mesh.scale = Vector3(0.1, 0.1, 0.1)
	var tween = create_tween()
	tween.set_parallel(true)
	tween.tween_property(
		explosion_mesh, "scale", Vector3(3, 3, 3), explosion_duration).set_trans(
			Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
	tween.tween_property(
		explosion_mesh.get_active_material(0), "albedo_color:a", 0.0, explosion_duration)
	tween.chain().tween_callback(queue_free)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
