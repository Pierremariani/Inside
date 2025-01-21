extends CharacterBody3D

var SPEED = 0


var active = true

@onready var nav_agent = $NavigationAgent3D

@onready var deadmess = $DeadMessage


@onready var msc = $"../musiquepoursuite"

func _ready():
	await get_tree().create_timer(1.13).timeout
	SPEED = 4.85


func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_path_position()
	var new_velocity = 0
	new_velocity = (next_location - current_location).normalized() * SPEED

	velocity = new_velocity
	move_and_slide()
	
func update_target_location(target_location):
	nav_agent.target_position = target_location


func _on_navigation_agent_3d_target_reached():
	msc.stop()
	get_tree().change_scene_to_file("res://screamershow.tscn")
	

