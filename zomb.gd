extends CharacterBody3D

var SPEED = 2


@onready var nav_agent = $NavigationAgent3D

@onready var joueur = get_parent().get_node("Player")

@onready var soundhit = $hit

@onready var body = $Armature/Skeleton3D

@onready var colli = $"."

var hp = 100


func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_path_position()
	var new_velocity = 0
	new_velocity = (next_location - current_location).normalized() * SPEED
	
	look_at(Vector3(joueur.global_position.x, joueur.global_position.y,joueur.global_position.z),Vector3.UP)
	

	velocity = new_velocity
	move_and_slide()
	
func update_target_location(target_location):
	nav_agent.target_position = target_location
	
func hurt():
	soundhit.play()
	hp -= 25
	if hp <= 0:
		body.visible = false
		colli.process_mode = 4

	

