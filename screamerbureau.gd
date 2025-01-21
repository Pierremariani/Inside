extends Node3D


@onready var restartbutton = $RestartButton

@onready var quitbutton = $quitButton




# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(4.5).timeout # Replace with function body.
	restartbutton.visible = true
	quitbutton.visible = true
	restartbutton.pressed.connect(on_restart_pressed)
	quitbutton.pressed.connect(on_quit_pressed)
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func on_quit_pressed():
	get_tree().quit()
	
func on_restart_pressed():
	get_tree().change_scene_to_file("res://world2.tscn")
