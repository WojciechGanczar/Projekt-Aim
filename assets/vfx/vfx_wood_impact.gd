extends Node3D

func _ready() -> void:
	$Dust.emitting = true
	$Splinters.emitting = true

func _on_dust_finished() -> void:
	queue_free()
