extends CharacterBody3D

var speed : float = 320
var ground_friction : float = 5
var active_speed : Vector3

var wish_vel : Vector3


func _physics_process(delta: float) -> void:
	move(delta)

func move(delta):
	
	## TODO: REPLACE WITH AIR & GROUND DIVIDED PHYSICS, MOVE INPUT CODE INTO SEPERATE GD.SCRIPT
	
	var input_dir = Input.get_vector("ssCharBackward","ssCharForward","ssCharLeft","ssCharRight")
	var wish_dir = Vector3(input_dir.x * speed, 0 , input_dir.y * speed)
	print(" - DIRECTION VECTOR : ", wish_dir)
	
	
	wish_vel = wish_dir * delta
	velocity = lerp(velocity, wish_vel, delta * ground_friction)
	print(" + VELOCITY : ", velocity)
	
	
	move_and_slide()
