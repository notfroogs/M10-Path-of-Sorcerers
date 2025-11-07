extends Sprite2D

const GODOT_BOTTOM = preload("uid://bw03btxpkxde4")
const GODOT_BOTTOM_RIGHT = preload("uid://cm33qabjyo48g")
const GODOT_RIGHT = preload("uid://dscj1kv8s4bxa")
const GODOT_UP = preload("uid://b2q8n8kfhhbi7")
const GODOT_UP_RIGHT = preload("uid://deiak2vt25cwr")
const UP_RIGHT = Vector2.UP + Vector2.RIGHT
const UP_LEFT = Vector2.UP + Vector2.LEFT
const DOWN_RIGHT = Vector2.DOWN + Vector2.RIGHT
const DOWN_LEFT = Vector2.DOWN + Vector2.LEFT

func _process(_delta: float) -> void:
	var input_direction:= Input.get_vector("right","left","up","down")
	var direction_discrete := input_direction.sign()
	match direction_discrete:
		Vector2.LEFT,Vector2.RIGHT:
			texture = GODOT_RIGHT
		Vector2.UP:
			texture = GODOT_UP
		Vector2.DOWN:
			texture = GODOT_BOTTOM
		DOWN_LEFT,DOWN_RIGHT:
			texture=GODOT_BOTTOM_RIGHT
		UP_LEFT,UP_RIGHT:
			texture = GODOT_UP_RIGHT
	if direction_discrete.length() > 0:
		flip_h = direction_discrete.x < 0.0
