extends Node3D

@onready var timer: Timer = $Timer
var blink_accumulator = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var threshold = timer.time_left * 0.1
	blink_accumulator += delta
	
	if(blink_accumulator >= threshold):
		blink_accumulator = 0
		visible = !visible

func _on_timer_timeout():
	queue_free()
