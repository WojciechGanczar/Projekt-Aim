extends HitTarget

func on_shot(position: Vector3, normal: Vector3):
	VfxManager.spawn_sparks(position, normal)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
