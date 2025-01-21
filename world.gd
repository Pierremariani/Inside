extends Node3D

@onready var monstreinterractive = $ennemiefirstapparition

@onready var pentagram = $pentagram

@onready var firstitem = $firstitem

@onready var firstdoor = $firstdoor

# Called when the node enters the scene tree for the first time.
func _ready():
	print("game starting...") # Replace with function body.
	monstreinterractive.visible = false
	monstreinterractive.process_mode = 4
	pentagram.visible = false
	pentagram.process_mode = 4
	firstitem.visible = false
	firstitem.process_mode = 4
	firstdoor.process_mode = 4
	firstdoor.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
