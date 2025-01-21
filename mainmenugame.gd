extends Node3D

@onready var startbutton = $bstart

@onready var quitbutton = $bquit

@onready var music = $musica

# Called when the node enters the scene tree for the first time.
func _ready():
	
	startbutton.pressed.connect(on_start_pressed)
	quitbutton.pressed.connect(on_quit_pressed)
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func on_quit_pressed():
	get_tree().quit()
	
func on_start_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
