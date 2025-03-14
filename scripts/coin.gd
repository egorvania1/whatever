extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player": 
		body.add_point()
		queue_free()
	else: print_debug("Not player")
