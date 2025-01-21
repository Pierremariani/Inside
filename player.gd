extends CharacterBody3D

# How fast the player moves in meters per second.
@export var speed = 3.5
# The downward acceleration when in the air, in meters per second squared.
@export var fall_acceleration = 75

@export var avancement = 1

@export var shovelinhands = false

var xp = 1000

var compteur = 0

var on = false

var droit = true

var hp = 100

var nbkill = 0

var held_object: RigidBody3D


var target_velocity = Vector3.ZERO

@onready var _camera := $CameraHolder

@onready var lampe = _camera.get_node("Camera3D/SpotLight3D")


@onready var _raycast := _camera.get_node("Camera3D/RayCast3D")

@onready var _hold_position := _camera.get_node("Camera3D/HoldPosition")

@onready var animshovel = $CameraHolder/Camera3D/shovelhand/AnimationPlayer

@onready var timerspawn = get_parent().get_node("mechantspawntimer")

@onready var maskinte = get_parent().get_node("mask/Interactable")

@onready var ambiancemusic = get_parent().get_node("ambiance")

@onready var endambiancemusic = get_parent().get_node("endspawn")

@onready var fondmusic = get_parent().get_node("fond")

@onready var coeur = get_parent().get_node("coeur")

@onready var videoplayer = get_parent().get_node("screen/SubViewport/SubViewportContainer/VideoStreamPlayer")

@onready var clownleft1 = get_parent().get_node("clownleft1")

@onready var clownleft2 = get_parent().get_node("clownleft2")

@onready var clownleft3 = get_parent().get_node("clownleft3")

@onready var dolldevant1 = get_parent().get_node("dolldevant1")

@onready var dolldevant2 = get_parent().get_node("dolldevant2")

@onready var dolldevant3 = get_parent().get_node("dolldevant3")

@onready var pollyright1 = get_parent().get_node("pollyright1")

@onready var pollyright2 = get_parent().get_node("pollyright2")

@onready var pollyright3 = get_parent().get_node("pollyright3")

@onready var lampederriere = get_parent().get_node("lampederriere")

@onready var lampedevant = get_parent().get_node("lampedevant")

@onready var sonrun = get_parent().get_node("run")

@onready var animclown = get_parent().get_node("clownleft3/AnimationPlayer")

@onready var animpolly = get_parent().get_node("pollyright3/AnimationPlayer")

@onready var sonshovel = $coup

@onready var hitbox = $Hitbox

@onready var damageui = $UI/ColorRect

@onready var aiesound = $aie

var walking = false

var sprinting = false

var one = false

var menuOS = false

var videoposition

var isVideoPlaying = false

var isMaskinHands = false

var onface = false

var pos =""

var atspawn = true

var nbdevant = 0

var nbleft = 0

var nbright = 0

var time_passed: float = 0.0

var interval: float  = 15.0 

var nbinterval = 0

var nberrorleft = 0

var nberrordevant = 0

var nberrorright = 0

var world4reach = false


func _physics_process(delta):
	var direction = Vector3.ZERO

	if Input.is_action_pressed("ui_left"):
		direction.x += avancement
	if Input.is_action_pressed("ui_right"):
		direction.x -= avancement
	if Input.is_action_pressed("ui_up"):
		direction.z += avancement
		if sprinting:
			walking = false
		else :
			walking = true
	if Input.is_action_just_released("ui_up"):
		walking = false	
	if Input.is_action_pressed("ui_down"):
		direction.z -= avancement
	if not Input.is_action_pressed("ui_shift") and not Input.is_action_pressed("ui_ctrl"):
		speed = 3.5
		if xp < 1000 :
			xp+= 2
	else : if Input.is_action_pressed("ui_shift"):
		if xp > 0 :
			speed = 5
			xp-= 2.5
			sprinting = true
		else :
			speed = 3.5
	else :
		speed = 2
		xp+= 5
	if Input.is_action_just_released("ui_shift"):
		sprinting = false
	if Input.is_action_just_released("ui_space"):
		if world4reach:
			$lampeson.play()
			lampe.spot_attenuation = 4.0
			lampe.visible = true
			await get_tree().create_timer(0.65).timeout
			lampe.visible = false
	if Input.is_action_pressed("ui_click") and shovelinhands:
		animshovel.play("attack")
		sonshovel.play()
	if Input.is_action_pressed("ui_escape"):
		$menu.visible = true
		Engine.time_scale = 0
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		$zinzin.play()
		if isVideoPlaying:
			videoplayer.set_paused(true)
	if Input.is_action_just_released("ui_rightclick"):
		if isMaskinHands:
			lampe.visible = true
			$CameraHolder/Camera3D/mask.visible = true
			if not onface:
				$inspiration.play()
				$CameraHolder/Camera3D/mask/AnimationPlayer.play("put")
				onface = true
				$uiambiancemask.visible = true
				await get_tree().create_timer(2.4).timeout
				$breath.play()
			else :
				$uiambiancemask.visible = false
				$CameraHolder/Camera3D/mask/AnimationPlayer.play("enleve")
				onface = false
				await get_tree().create_timer(0.75).timeout
				$breath.stop()
				await get_tree().create_timer(0.1).timeout
				$expiration.play()
			if world4reach:
				lampe.visible = false
	if Input.is_action_just_released("ui_droite") or Input.is_action_just_released("ui_devant") or Input.is_action_just_released("ui_gauche") :
		if not atspawn:
			$AnimationPlayer.play(pos)
			pos = "spawn"
			atspawn = true
		else :
			if Input.is_action_just_released("ui_droite"):
				$AnimationPlayer.play("right")
				pos = "rightback"
				nbright+=1
			if Input.is_action_just_released("ui_devant"):
				$AnimationPlayer.play("front")
				pos = "frontback"
				nbdevant+=1
			if Input.is_action_just_released("ui_gauche"):
				$AnimationPlayer.play("left")
				pos = "leftback"
				nbleft+=1
			atspawn = false
		
		
	# Obtention de la direction avant (forward) de la caméra
	var camera_forward = -_camera.global_transform.basis.z.normalized()

	# Ignorer la composante Y pour ne pas sauter
	camera_forward.y = 0

	if direction != Vector3.ZERO:
		direction = direction.normalized()
		# Utilisation de la direction avant de la caméra
		direction = camera_forward.rotated(Vector3.UP, atan2(direction.x, direction.z))

	# Ground Velocity
	target_velocity.x = direction.x * speed
	target_velocity.z = direction.z * speed

	# Vertical Velocity
	if not is_on_floor():
		# Si dans l'air, chute vers le bas (gravité)
		target_velocity.y = target_velocity.y - (fall_acceleration * delta)

	# Mouvement du personnage
	velocity = target_velocity
	move_and_slide()
	
func attack():
	var enemies = hitbox.get_overlapping_bodies()
	for enemy in enemies:
		if enemy.has_method("hurt"):
			enemy.hurt()
			if nbkill == 25 and not one:
				one = true
				timerspawn.process_mode = 4
				ambiancemusic.stop()
				coeur.stop()
				endambiancemusic.play()
				maskinte.process_mode = 0
				await get_tree().create_timer(2.5).timeout
				fondmusic.play()
				
				
func _on_animation_player_animation_started(anim_name):
	attack()
	
func take_damage():
	hp -= 9
	aiesound.play()
	damageui.visible = true
	await get_tree().create_timer(0.5).timeout
	damageui.visible = false
	if hp < 1:
		get_tree().change_scene_to_file("res://screamercave.tscn")
		


func _on_resume_pressed():
	$menu.visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	Engine.time_scale = 1
	$zinzin.stop()
	if isVideoPlaying:
		videoplayer.set_paused(false)

func _on_quit_pressed():
	get_tree().quit()
	
func verifdevant():
	if nbdevant <3+nbinterval:
		return false
	return true
	
func verifleft():
	if nbleft <3+nbinterval:
		return false
	return true
	
func verifright():
	if nbright <3+nbinterval:
		return false
	return true
	
func alllightsoff():
	lampederriere.visible = false
	lampe.visible = false
	lampedevant.visible = false
	
func alllightson():
	lampederriere.visible = true
	lampedevant.visible = true
	
func allclowninvisble():
	clownleft1.visible = false
	clownleft2.visible = false
	clownleft3.visible = false
	
func alldollinvisible():
	dolldevant1.visible = false
	dolldevant2.visible = false
	dolldevant3.visible = false
	
func allpollyinvisible():
	pollyright1.visible = false
	pollyright2.visible = false
	pollyright3.visible = false
	
	
#Gestion temps
func _process(delta: float) -> void:
	if world4reach:
		time_passed += delta
		if time_passed >= interval:
			if !verifdevant() or !verifleft() or !verifright():
				alllightsoff()
				sonrun.play()
				time_passed = 0.0
				await get_tree().create_timer(2.6).timeout	
				if !verifdevant():
					nberrordevant+=1
					alldollinvisible()
					if nberrordevant > 3:
						if not onface:
							get_tree().change_scene_to_file("res://screamercave.tscn")
						else:
							alldollinvisible()
							nberrordevant = 0
					if nberrordevant == 1:
						dolldevant1.visible = true
					if nberrordevant == 2:
						dolldevant2.visible = true
					if nberrordevant == 3:
						dolldevant3.visible = true
				if !verifleft():
					nberrorleft+=1
					allclowninvisble()
					if nberrorleft > 3:
						if not onface:
							get_tree().change_scene_to_file("res://screamercave.tscn")
						else:
							allclowninvisble()
							nberrorleft = 0
					if nberrorleft == 1:
						clownleft1.visible = true
					if nberrorleft == 2:
						clownleft2.visible = true
					if nberrorleft == 3:
						clownleft3.visible = true
						animclown.play("Clown_Springtrap--Shutdown")
				if !verifright():
					nberrorright+=1
					allpollyinvisible()
					if nberrorright > 3:
						if not onface:
							get_tree().change_scene_to_file("res://screamercave.tscn")
						else:
							allpollyinvisible()
							nberrorright = 0
					if nberrorright == 1:
						pollyright1.visible = true
					if nberrorright == 2:
						pollyright2.visible = true
					if nberrorright == 3:
						pollyright3.visible = true
						animpolly.play("Take 001")
				alllightson()
			nbdevant = 0
			nbleft = 0
			nbright = 0
			time_passed = 0.0
			nbinterval+=1
		
	

