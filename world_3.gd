extends Node3D

@onready var joueur = $Player

@onready var _showstatuelabel = get_node("Player/CameraHolder/Camera3D/PlayerInteractor/showStatueLabel")

@onready var _showmechantinte = $mechant/Interactable

@onready var mus = $coeur

@onready var spawns = $Spawns

@onready var navig = $NavigationRegion3D

@onready var timer  = $mechantspawntimer

@onready var mask = $mask/Interactable

var mechant3 = load("res://mechant3.tscn")

var instance

@onready var shovel = get_node("cave/Sketchfab_model/root/GLTF_SceneRootNode/spade_64/Object_83/Interactable")
# Called when the node enters the scene tree for the first time.
func _ready():
	_showstatuelabel.visible = true
	_showmechantinte.process_mode = 4
	shovel.process_mode = 4
	timer.process_mode = 4
	mask.process_mode = 4
	$door/Interactable.process_mode = 4
	randomize()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	get_tree().call_group("enemies", "update_target_location", joueur.global_transform.origin)

func _on_animation_player_animation_finished(anim_name):
	await get_tree().create_timer(6.4).timeout
	#mus.stop()
	shovel.process_mode = 0
	
func _get_random_child(parent_node):
	var random_id = randi() % parent_node.get_child_count()
	return parent_node.get_child(random_id)


func _on_mechantspawntimer_timeout():
	var spawn_point = _get_random_child(spawns).global_position
	instance = mechant3.instantiate()
	instance.position = spawn_point
	navig.add_child(instance)
