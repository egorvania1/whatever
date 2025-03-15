extends Area2D
var coin = preload("res://scenes/coin.tscn")
@onready var area = %CoinSpawnCollisionShape2D.shape.extents
@onready var origin = %CoinSpawnCollisionShape2D.position - area

func _on_coin_spawn_timer_timeout() -> void:
	var coin_instance = coin.instantiate()
	coin_instance.position.x = randf_range(origin.x, area.x)
	coin_instance.position.y = randf_range(origin.y, area.y)
	add_child(coin_instance)
