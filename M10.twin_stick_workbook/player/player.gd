extends CharacterBody2D

@export var max_speed := 460.0
@export var friction := 10

func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("right","left","up","down")
	var desired_velocity= direction*max_speed
	var steering_velocity = desired_velocity - velocity
	velocity += steering_velocity * friction * delta
	move_and_slide()
