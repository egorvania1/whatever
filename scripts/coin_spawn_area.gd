extends Area2D
var coin = preload("res://coin.tscn")
@onready var spawn_area = %CoinSpawnCollisionShape2D.shape.size
@onready var origin = %CoinSpawnCollisionShape2D.global_position - %CoinSpawnCollisionShape2D.shape.extents

func _on_coin_spawn_timer_timeout() -> void:
	var coin_instance = coin.instantiate()
	coin_instance.position.x = randf_range(origin.x, spawn_area.x)
	coin_instance.position.y = randf_range(origin.y, spawn_area.y)
	add_child(coin_instance)
