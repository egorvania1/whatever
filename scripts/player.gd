extends CharacterBody2D

const SPEED = 500
var score: int
@onready var scorelabel = %ScoreLabel

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * SPEED
	move_and_slide()
	
func add_point() -> void:
	score += 1
	scorelabel.text = str(score)
	
	if score == 50: gameover()

func gameover() -> void:
	OS.alert("50 монеток вау ты молодец skill exists", "Game oVer")
	get_tree().quit()
