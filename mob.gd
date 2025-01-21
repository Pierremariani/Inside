extends Node3D

@onready var soundhit = $hit

@onready var body = $"Sketchfab_model/8e310c34e5f748e7a1507c4fd78af2e2_obj_cleaner_materialmerger_gles/Object_2"

@onready var colli = $"."

var hp = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func hurt():
	soundhit.play()
	hp -= 25
	if hp <= 0:
		body.visible = false
		colli.process_mode = 4
