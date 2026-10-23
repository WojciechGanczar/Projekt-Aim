extends CharacterBody3D

@onready var camera: Camera3D = $Camera3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	camera = get_viewport().get_camera_3d()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):
	if event.is_action_pressed("click"):
		shoot_ray()

func shoot_ray():
	var mouse_pos = get_viewport().get_mouse_position()
	var ray_length = 1000
	var from = camera.project_ray_origin(mouse_pos)
	var to = from + camera.project_ray_normal(mouse_pos) * ray_length
	var space = camera.get_world_3d().direct_space_state
	var ray_query = PhysicsRayQueryParameters3D.new()
	
	ray_query.from = from
	ray_query.to = to
	
	var raycast_result = space.intersect_ray(ray_query)
	
	if not raycast_result.is_empty():
		var target = raycast_result.collider
		
		if target is HitTarget:
			target.on_shot()
		else:
			var hit_position = raycast_result.position
			var surface_normal = raycast_result.normal
			print("Trafiono w: BETON, w miejscu: " + str(hit_position) 
			+ " pod kątem: " + str(surface_normal))
