extends HitTarget

var breakable_crate = preload("res://entities/props/WoodenCrateBreakable.tscn")

var hp: int = 3

func on_shot(position: Vector3, normal: Vector3):
	VfxManager.spawn_dust_and_splinters(position, normal)
	
	hp -= 1
	if hp < 1:
		var bk = breakable_crate.instantiate()
		get_parent().add_child(bk)
		bk.global_position = global_position
		queue_free()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
