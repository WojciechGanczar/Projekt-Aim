extends Node3D

@onready var timer: Timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout():
	var tween = get_tree().create_tween()
	for i in 7:
		tween.tween_property(self, "visible", false, 0.15)
		tween.tween_property(self, "visible", true, 0.15)
	
	tween.tween_callback(queue_free)
