extends Area2D

@onready var anim = %AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player": 
		anim.play("collect")
		body.add_point()

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "collect": queue_free()
