extends HitTarget

var breakable_explosive_barrel = preload("res://entities/props/ExplosiveBarrelBreakable.tscn")
var hp: int = 3

func on_shot(position: Vector3, normal: Vector3, damage: int):
	VfxManager.spawn_sparks(position, normal)
	
	hp -= damage
	if hp < 1:
		VfxManager.spawn_explosion(global_position)
		var bk = breakable_explosive_barrel.instantiate()
		get_parent().add_child(bk)
		bk.global_transform = global_transform
		queue_free()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
