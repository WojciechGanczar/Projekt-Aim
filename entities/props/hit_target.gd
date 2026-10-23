extends CollisionObject3D

class_name HitTarget

enum TargetMaterial { WOOD, METAL, CONCRETE, FLESH }

@export var hit_material_type = TargetMaterial.WOOD 

func on_shot():
	print("Trafiono w: " + TargetMaterial.keys()[hit_material_type])

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
