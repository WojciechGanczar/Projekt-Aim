extends Area3D

const EXPLOSION_DAMAGE = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	await get_tree().physics_frame
	await get_tree().physics_frame
	queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node3D) -> void:
	var direction: Vector3 = (body.global_position - global_position).normalized()
	
	if body is HitTarget:
		body.on_shot(body.global_position, direction, EXPLOSION_DAMAGE)
	elif body is RigidBody3D:
		var random_recoil = randf_range(4.0, 6.0)
		direction = direction * random_recoil
		body.apply_central_impulse(direction)
		var random_torque = Vector3(randf_range(-3.0, 3.0), randf_range(-3.0, 3.0), randf_range(-3.0, 3.0))
		body.apply_torque_impulse(random_torque)
	
	if body.get_parent() == self.get_parent():
		queue_free()
		return
