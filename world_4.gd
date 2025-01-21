extends Node3D

@onready var playerscript = get_node("Player")

@onready var spotlightplayer = get_node("Player/CameraHolder/Camera3D/SpotLight3D")


# Called when the node enters the scene tree for the first time.
func _ready():
	playerscript.isMaskinHands = true
	playerscript.world4reach = true
	playerscript.avancement = 0
	spotlightplayer.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
