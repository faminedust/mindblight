extends Node3D

@export var sensitivity = 1
@onready var cam = $cam3d
var cam_pre

func _ready() -> void:
	sensitivity = sensitivity * 0.01
	cam_pre = cam.position



func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ssCamrigLeft"):
		cam.position.z += -1
	
	if Input.is_action_just_pressed("ssCamrigRight"):
		cam.position.z += 1
	
	if Input.is_action_just_pressed("ssCamrigDown"):
		cam.position = cam_pre
	
	
	
	# MOUSE MOVEMENT
	if event is InputEventMouseMotion:
		rotation.z -= event.relative.y * sensitivity
		rotation.y -= event.relative.x * sensitivity
