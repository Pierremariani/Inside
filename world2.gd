extends Node3D

@onready var interabook =get_node("bureau/Sketchfab_model/Collada visual scene group/Material35/Interactable")

@onready var exit =get_node("bureau/Sketchfab_model/Collada visual scene group/Material22/Interactable")

@onready var tab1 = $tab1/Interactable

@onready var tab3 = $tab3/Interactable

@onready var tab4 = $tab4/Interactable

@onready var statue2 = $statue2

# Called when the node enters the scene tree for the first time.
func _ready():
	exit.process_mode = 4
	interabook.process_mode = 4
	tab1.process_mode = 4
	tab3.process_mode = 4
	tab4.process_mode = 4
	statue2.process_mode = 4	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
