extends Area2D

@onready var anim = %AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player": 
		anim.play("collect")
		body.add_point()

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	match anim_name:
		"collect": queue_free()
		"blink": queue_free()

func _on_life_timer_timeout() -> void:
	anim.play("blink")
