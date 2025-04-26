extends CharacterBody2D

const SPEED = 6000
var score: int
@onready var scorelabel = %ScoreLabel
var time_start = 0
var time_now = 0

func _ready() -> void:
	time_start = Time.get_unix_time_from_system()

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * SPEED * delta
	move_and_slide()
	
func add_point() -> void:
	score += 1
	scorelabel.text = str(score)
	
	if score == 50: gameover()

func gameover() -> void:
	time_now = Time.get_unix_time_from_system()
	var time_elapsed = time_now - time_start
	
	var result_time = "Потрачено времени: " + str(Time.get_time_string_from_unix_time(time_elapsed))
	OS.alert(result_time, "Игра окончена!")
	get_tree().quit()
