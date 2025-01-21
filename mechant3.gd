extends CharacterBody3D

var SPEED = 2

const attack_range = 2.0


@onready var nav_agent = $NavigationAgent3D

@export var joueur_path := "/root/world3/Player"

@onready var joueur = get_node(joueur_path)

@onready var soundhit = $hit

@onready var body = $Armature/Skeleton3D

@onready var colli = $"."

@onready var anim_tree =$AnimationTree

@onready var animplayer = $AnimationPlayer

@onready var dyingsound = $dying

var hp = 100


func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_path_position()
	var new_velocity = 0
	new_velocity = (next_location - current_location).normalized() * SPEED
	
	look_at(Vector3(joueur.global_position.x, joueur.global_position.y,joueur.global_position.z),Vector3.UP)
	

	velocity = new_velocity
	anim_tree.set("parameters/conditions/attacking", _target_in_range())
	anim_tree.set("parameters/conditions/run", !_target_in_range())
	move_and_slide()
	
func update_target_location(target_location):
	nav_agent.target_position = target_location
	
func hurt():
	hp -= 25
	if hp <= 0:
		dyingsound.play()
		body.visible = false
		colli.process_mode = 4
		joueur.nbkill +=1
	else :
		animplayer.play("Armature_001|mixamo_com|Layer0")
		soundhit.play()
		
func _target_in_range():
	return global_position.distance_to(joueur.global_position) < attack_range

func hit_finished():
	joueur.take_damage()
