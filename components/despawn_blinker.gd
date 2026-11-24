extends Timer

class_name DespawnBlinker

var blink_accumulator = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timeout.connect(_on_timeout)
	start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var threshold = time_left * 0.1
	blink_accumulator += delta
	
	if(blink_accumulator >= threshold):
		blink_accumulator = 0
		get_parent().visible = !get_parent().visible

func _on_timeout() -> void:
	get_parent().queue_free()
