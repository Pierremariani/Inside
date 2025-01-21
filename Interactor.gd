extends Area3D

class_name Interactor

var controller: Node3D

@onready var _mess = $Message

@onready var _firstpage = $firstpage

@onready var _requireitemmess = $RequireMessage

@onready var _showstatuelabel = $showStatueLabel

@onready var _firstenigme = $enigme

@onready var playerscript = get_parent().get_parent().get_parent().get_parent().get_node("Player")

@onready var playercam = get_parent().get_parent().get_parent().get_parent().get_node("Player/CameraHolder/Camera3D")

@onready var cinecam = get_parent().get_parent().get_parent().get_parent().get_node("cinecam")

@onready var windowframe =get_parent().get_parent().get_parent().get_parent().get_node("The Attic/Window_Frame_01a_003") 

@onready var radiosubway = get_parent().get_parent().get_parent().get_parent().get_node("subwaysurfradio")

@onready var pickupmusic = get_parent().get_parent().get_parent().get_parent().get_node("pickupmusic")

@onready var firstitemmusic = get_parent().get_parent().get_parent().get_parent().get_node("firstiemmusic")

@onready var radiomiel = get_parent().get_parent().get_parent().get_parent().get_node("mielpopsradio")

@onready var radiofarfadet = get_parent().get_parent().get_parent().get_parent().get_node("farfadetradio")

@onready var pentagram = get_parent().get_parent().get_parent().get_parent().get_node("pentagram")

@onready var satanbook = get_parent().get_parent().get_parent().get_parent().get_node("satanbook")

@onready var firstitem = get_parent().get_parent().get_parent().get_parent().get_node("firstitem")

@onready var firstitempentagram = get_parent().get_parent().get_parent().get_parent().get_node("firstitempenlagram")

#Va chercher la lampe rose dans la scene principale
@onready var lightpink = get_parent().get_parent().get_parent().get_parent().get_node("SpotLight3D2")

@onready var lightmonster1= get_parent().get_parent().get_parent().get_parent().get_node("SpotLight3D4")

@onready var afterlightpink = get_parent().get_parent().get_parent().get_parent().get_node("SpotLight3D3")

@onready var _monsterfirstscene = get_parent().get_parent().get_parent().get_parent().get_node("Monsterfirstscene")

@onready var _musicfirstscene = get_parent().get_parent().get_parent().get_parent().get_node("lightscenepink")

@onready var _musicambiance = get_parent().get_parent().get_parent().get_parent().get_node("ambiance")

@onready var lightdoor = get_parent().get_parent().get_parent().get_parent().get_node("SpotLight3D")

@onready var _musicinterrupteur = get_parent().get_parent().get_parent().get_parent().get_node("interrupteur")

@onready var playerlight = get_parent().get_node("SpotLight3D")

@onready var _musiclivre = get_parent().get_parent().get_parent().get_parent().get_node("livre")

@onready var _musicbaguette = get_parent().get_parent().get_parent().get_parent().get_node("baguette")

@onready var _musicinterferance = get_parent().get_parent().get_parent().get_parent().get_node("interferance")

@onready var _musicradio = get_parent().get_parent().get_parent().get_parent().get_node("radioplay")

@onready var monstreinterractive = get_parent().get_parent().get_parent().get_parent().get_node("ennemiefirstapparition")

@onready var _musicend = get_parent().get_parent().get_parent().get_parent().get_node("endstress")

@onready var _firstdoor = get_parent().get_parent().get_parent().get_parent().get_node("firstdoor")

@onready var monstrewindow = get_parent().get_parent().get_parent().get_parent().get_node("ennemiewindow")

@onready var _musicbrouillard = get_parent().get_parent().get_parent().get_parent().get_node("radioplaybrouillard")

@onready var _musicding = get_parent().get_parent().get_parent().get_parent().get_node("ding")

@onready var _lamp1 = get_parent().get_parent().get_parent().get_parent().get_node("lamp1")

@onready var _lamp2 = get_parent().get_parent().get_parent().get_parent().get_node("lamp2")

@onready var _lamp3 = get_parent().get_parent().get_parent().get_parent().get_node("lamp3")

@onready var _lamp4 = get_parent().get_parent().get_parent().get_parent().get_node("lamp4")

@onready var _musictoc1 = get_parent().get_parent().get_parent().get_parent().get_node("toc1")

@onready var _musicberceuse = get_parent().get_parent().get_parent().get_parent().get_node("berceuse")

@onready var _musicberceusetic = get_parent().get_parent().get_parent().get_parent().get_node("interrupteur")

@onready var _musicboom = get_parent().get_parent().get_parent().get_parent().get_node("endstress")

@onready var _enemiebruit = get_parent().get_parent().get_parent().get_parent().get_node("enemiebruit")

@onready var _enigmebruit = get_parent().get_parent().get_parent().get_parent().get_node("livre")

@onready var _poserbruit = get_parent().get_parent().get_parent().get_parent().get_node("poser")

@onready var _mechantpop = get_parent().get_parent().get_parent().get_parent().get_node("enemie")

@onready var _paintingmusic = get_parent().get_parent().get_parent().get_parent().get_node("painting")

@onready var interabook =get_parent().get_parent().get_parent().get_parent().get_node("bureau/Sketchfab_model/Collada visual scene group/Material35/Interactable")

@onready var exit2 =get_parent().get_parent().get_parent().get_parent().get_node("bureau/Sketchfab_model/Collada visual scene group/Material22/Interactable")

@onready var _tab1 = get_parent().get_parent().get_parent().get_parent().get_node("tab1/Interactable")

@onready var _tab3 = get_parent().get_parent().get_parent().get_parent().get_node("tab3/Interactable")

@onready var _tab4 = get_parent().get_parent().get_parent().get_parent().get_node("tab4/Interactable") 

@onready var tab4 = get_parent().get_parent().get_parent().get_parent().get_node("tab4")

@onready var tab1 = get_parent().get_parent().get_parent().get_parent().get_node("tab1")


@onready var tab3 = get_parent().get_parent().get_parent().get_parent().get_node("tab3")


@onready var statue2 = get_parent().get_parent().get_parent().get_parent().get_node("statue2")

@onready var pickstatue2music = get_parent().get_parent().get_parent().get_parent().get_node("pickupmusic")

@onready var sonette = get_parent().get_parent().get_parent().get_parent().get_node("sonette")

@onready var eclair = get_parent().get_parent().get_parent().get_parent().get_node("eclair")

@onready var ok = get_parent().get_parent().get_parent().get_parent().get_node("ok")

@onready var screamerscript = get_parent().get_parent().get_parent().get_parent().get_parent().get_node("screamershow")

@onready var item23 = get_parent().get_parent().get_parent().get_parent().get_node("item23")

@onready var pentaworld3 = get_parent().get_parent().get_parent().get_parent().get_node("pentaworld3")

@onready var videoplaying = get_parent().get_parent().get_parent().get_parent().get_node("screen/SubViewport/SubViewportContainer/VideoStreamPlayer")

@onready var videoplaying2 = get_parent().get_parent().get_parent().get_parent().get_node("screen/SubViewport/SubViewportContainer2/vid2")

@onready var screeninte = get_parent().get_parent().get_parent().get_parent().get_node("screen/Interactable")

@onready var animw3 = get_parent().get_parent().get_parent().get_parent().get_node("mechant/AnimationPlayer")

@onready var mechant3 = get_parent().get_parent().get_parent().get_parent().get_node("mechant")

@onready var bimmechant3 = get_parent().get_parent().get_parent().get_parent().get_node("bimmechant")

@onready var coeurmusic = get_parent().get_parent().get_parent().get_parent().get_node("coeur")

@onready var oumusic = get_parent().get_parent().get_parent().get_parent().get_node("ou")

@onready var mechant3inte = get_parent().get_parent().get_parent().get_parent().get_node("mechant/Interactable")

@onready var putmusic = get_parent().get_parent().get_parent().get_parent().get_node("put")

@onready var pelle = get_parent().get_parent().get_parent().get_parent().get_node("cave/Sketchfab_model/root/GLTF_SceneRootNode/spade_64/Object_83")

@onready var pelleinte = get_parent().get_parent().get_parent().get_parent().get_node("cave/Sketchfab_model/root/GLTF_SceneRootNode/spade_64/Object_83/Interactable")

@onready var playershovel = get_parent().get_parent().get_parent().get_parent().get_node("Player/CameraHolder/Camera3D/shovelhand")

@onready var timerspawner = get_parent().get_parent().get_parent().get_parent().get_node("mechantspawntimer")

@onready var getweaponlabel = get_parent().get_parent().get_parent().get_parent().get_node("Player/weaponui/Label")

@onready var musicspawn = get_parent().get_parent().get_parent().get_parent().get_node("ambiance")

@onready var musicpellepick = get_parent().get_parent().get_parent().get_parent().get_node("takepelle")

@onready var maskinte = get_parent().get_parent().get_parent().get_parent().get_node("mask/Interactable")

@onready var mask = get_parent().get_parent().get_parent().get_parent().get_node("mask")

@onready var playermaskui = get_parent().get_parent().get_parent().get_parent().get_node("Player/maskui")

@onready var door3 = get_parent().get_parent().get_parent().get_parent().get_node("door")

@onready var fondmusic = get_parent().get_parent().get_parent().get_parent().get_node("fond")

@onready var clownsound = get_parent().get_parent().get_parent().get_parent().get_node("clown")

@onready var doorsound = get_parent().get_parent().get_parent().get_parent().get_node("doorsound")

@onready var door3inte = get_parent().get_parent().get_parent().get_parent().get_node("door/Interactable")


var alreadyonscreen = false

var firstsceneplaying = false

var firstscenepassed = false

var monstersee = false

var lampescene = false

var lampe1allume = false

var playingradio = false

var delayradio = false

var apparitionradioDONE = false

var timeforsecondscene = false

var pentascale = 1

var pentascalefirstitem = false

var nbcgtradio = 0

var noduplacatemonster = false

var nbsonette = 0

var berceuse1 = false

var tab1turn = false


var tab3turn = false

var tab4turn = false

var animberceuse = false

var secondstatue = false

var isvp3 = false




@export  var screamer_scene : PackedScene

var rng = RandomNumberGenerator.new()


#Last item on screen
var my_array : Array = []

var inventory : Array = []

var indexradiosecondscene = 0
	
#TOUTES LES INTERACTIOSN SERONT GEREES ICI SELON LEURS NOMS
func interact(interactable: Interactable) -> void:
	var tab = [radiofarfadet, radiomiel, radiosubway]
	if is_instance_valid(interactable):
		interactable.interacted.emit(self)
		print("Interacted with:", interactable.get_parent().get_name())
		print("interactable validé et envoyé")
		if not alreadyonscreen:
		#Livre spawn
			if interactable.get_parent().get_name() == "SM_OldBook_01d7_227":
				_musiclivre.play()
				print("1er livre ouvert")
				_firstpage.visible = true
				alreadyonscreen = true
				my_array.append(_firstpage)
				Engine.time_scale = 0
			if interactable.get_parent().get_name() == "Material35":
				_enigmebruit.play()
				_firstenigme.visible = true
				alreadyonscreen = true
				my_array.append(_firstenigme)
				Engine.time_scale = 0
			if interactable.get_parent().get_name() == "SM_Lamp_01a2_162":
				_musicinterrupteur.play()
				if not lampescene:
					lampescene = true
					firstsceneplaying = true
					playerscript.avancement = 0
					_musicambiance.stop()
					_musicradio.stop()
					_musicfirstscene.play()
					#extinction lampe rose
					#playercam.visible = false
					#cinecam.visible = true
					await get_tree().create_timer(2.5).timeout
					playerlight.visible = false
					#idem lampe joueur
					await get_tree().create_timer(5.5).timeout
					lightpink.visible = false
					#lancement musique
					await get_tree().create_timer(3.7).timeout
					_monsterfirstscene.visible = true
					#affichage lampe joueur
					await get_tree().create_timer(5.0).timeout
					playerlight.visible = true
					#extinction lampe joueur
					await get_tree().create_timer(1.2).timeout
					playerlight.visible = false
					#enleve yeux
					await get_tree().create_timer(3).timeout
					_monsterfirstscene.visible = false
					#nouvelle lumiere
					await get_tree().create_timer(2.5).timeout
					#afterlightpink.visible = true
					playerlight.visible = true
					await get_tree().create_timer(0.5).timeout
					playerlight.visible = false
					#lumiere joueur allumée
					await get_tree().create_timer(1.0).timeout
					playerlight.visible = true
					await get_tree().create_timer(5.0).timeout
					_musicend.play()
					await get_tree().create_timer(5.0).timeout
					_musicambiance.play()
					playerscript.avancement = 1
					await get_tree().create_timer(2.0).timeout
					_musicbrouillard.play()
					playingradio = true
					firstsceneplaying = false
					await get_tree().create_timer(3.0).timeout
					_musicbaguette.play()
					await get_tree().create_timer(7.5).timeout
					firstscenepassed = true
					_musicradio.play()
			if interactable.get_parent().get_name() == "autoradio":
				print("autoradio cliqué")
				if not playingradio and not delayradio and not firstsceneplaying and not timeforsecondscene:
					delayradio = true
					_musicinterferance.play()
					await get_tree().create_timer(10.89).timeout
					delayradio = false
				elif firstscenepassed and not apparitionradioDONE:
					playerscript.avancement = 0
					_musicradio.stop()
					playingradio = false
					monstreinterractive.process_mode = 0
					monstreinterractive.visible = true
					lightmonster1.visible = true
					monstersee = true
					_mess.process_mode = 4
					apparitionradioDONE = true
				elif timeforsecondscene:
					if indexradiosecondscene < tab.size():
						if indexradiosecondscene == 0:
							tab[indexradiosecondscene].play()
							indexradiosecondscene+= 1
						else :
							tab[indexradiosecondscene-1].stop()
							tab[indexradiosecondscene].play()
							indexradiosecondscene+= 1
					else:
						tab[indexradiosecondscene-1].stop()
						print("jouer screamer")
						get_tree().change_scene_to_file("res://screamerbackworld.tscn")
						indexradiosecondscene = 0
			if interactable.get_parent().get_name() == "pentagram":
				if pentascale == 1:
					for element in inventory:
						if 	element == firstitem:
							pentascalefirstitem = true
					if pentascalefirstitem:
						print("premier item déposé")
						#on enleve l'objet de l'inventaire
						pentascale = 2
						firstitemmusic.play()
						firstitempentagram.visible = true
						_showstatuelabel.visible = false
						await get_tree().create_timer(8.5).timeout
						lightdoor.visible = false
						await get_tree().create_timer(6.5).timeout
						lightdoor.visible = true
						windowframe.visible = false
						_firstdoor.visible = true
						_firstdoor.process_mode = 0
						_musicend.play()
					else :
						print("Un objet est requis")
						_requireitemmess.visible = true	
						await get_tree().create_timer(3.0).timeout
						_requireitemmess.visible = false	
			if interactable.get_parent().get_name() == "firstitem":
				pickupmusic.play()
				print("premier objet récupérer")
				inventory.push_back(firstitem)
				firstitem.queue_free()
				_showstatuelabel.visible = true
			if interactable.get_parent().get_name() == "statue2":
				pickstatue2music.play()
				print("deuxieme objet récupérer")
				inventory.push_back(statue2)
				statue2.queue_free()
				_showstatuelabel.visible = true
				exit2.process_mode = 0
			if interactable.get_parent().get_name() == "firstdoor":
				print("Ouverture de la porte")
				get_tree().change_scene_to_file("res://corridorbase.tscn")
			if interactable.get_parent().get_name() == "P_D":
				get_tree().change_scene_to_file("res://world2.tscn")
			if 	interactable.get_parent().get_name() == "sonette":	
				_musicding.play()
				if berceuse1:
					if nbsonette == 0:
						sonette.process_mode = 4
						await get_tree().create_timer(4.5).timeout
						_lamp1.visible = false
						_lamp3.visible = false
						_lamp4.visible = false
						await get_tree().create_timer(0.7).timeout
						_musictoc1.play()
						await get_tree().create_timer(9.7).timeout
						_lamp1.visible = true
						_lamp3.visible = true
						interabook.process_mode = 0
						_tab1.process_mode = 0
						_tab3.process_mode = 0
						_tab4.process_mode = 0
						sonette.process_mode = 0
					else:
						if nbsonette > 4 and not checkpainting():
							get_tree().change_scene_to_file("res://screamerbureau.tscn")
						else :
							if checkpainting() :
								print("enigme réussie")
								sonette.process_mode = 4
								eclair.play()
								turnofflight()
								await get_tree().create_timer(13.7).timeout
								statue2.visible = true
								statue2.process_mode = 0
								ok.play()
								turnonlight()
								_tab1.process_mode = 4
								_tab3.process_mode = 4
								_tab4.process_mode = 4
							else : 
								print("raté")
					nbsonette +=1
			if 	interactable.get_parent().get_name() == "Material2":
				if not berceuse1 and not animberceuse:
					animberceuse = true
					playerscript.avancement = 0
					_musicberceuse.play()
					await get_tree().create_timer(15.5).timeout
					_musicboom.play()
					turnofflight()
					await get_tree().create_timer(6.5).timeout
					_enemiebruit.play()
					_mechantpop.process_mode = 0
					_mechantpop.visible = true
					turnonlight()
					await get_tree().create_timer(0.5).timeout
					_mechantpop.visible = false
					_mechantpop.process_mode = 4
					turnofflight()
					await get_tree().create_timer(2.5).timeout
					playerscript.avancement = 1
					turnonlight()
					berceuse1 = true
				else :
					_musicberceusetic.play()
			if 	interactable.get_parent().get_name() == "tab1":
				_paintingmusic.play()
				if not tab1turn:
					tab1turn = true
					tab1.rotation_degrees = Vector3(0, -90, 0)
				else:
					tab1turn = false
					tab1.rotation_degrees = Vector3(0, 90, 0)
			if 	interactable.get_parent().get_name() == "tab3":
				_paintingmusic.play()
				if not tab3turn:
					tab3turn = true
					tab3.rotation_degrees = Vector3(0, 90, 0)
				else:
					tab3turn = false
					tab3.rotation_degrees = Vector3(0, -90, 0)
			if 	interactable.get_parent().get_name() == "tab4":
				_paintingmusic.play()
				if not tab4turn:
					tab4turn = true
					tab4.rotation_degrees = Vector3(0, -90, 0)
				else:
					tab4turn = false
					tab4.rotation_degrees = Vector3(0, 90, 0)
			if 	interactable.get_parent().get_name() == "Material22":
				get_tree().change_scene_to_file("res://world_3.tscn")
				_showstatuelabel.visible = true
			if 	interactable.get_parent().get_name() == "pentaworld3":
				secondstatue = true
				_showstatuelabel.visible = false
				item23.visible = true
				putmusic.play()
				oumusic.play()
				pentaworld3.process_mode = 4
			if interactable.get_parent().get_name() == "screen":
				if secondstatue and not isvp3:
					playerscript.isVideoPlaying = true
					screeninte.process_mode = 4
					isvp3 = true
					videoplaying.play()
					await get_tree().create_timer(60).timeout
					mechant3.visible = true
					mechant3inte.process_mode = 0
					screeninte.process_mode = 0
					playerscript.isVideoPlaying = false
				else :
					videoplaying2.play()
			if interactable.get_parent().get_name() == "Object_83":
				pelle.visible = false
				pelleinte.process_mode = 4
				playershovel.visible = true
				playerscript.shovelinhands = true
				getweaponlabel.visible = false
				musicpellepick.play()
			if interactable.get_parent().get_name() == "mask":
				clownsound.play()
				playerscript.isMaskinHands = true
				mask.visible = false
				maskinte.process_mode = 4
				playermaskui.visible = true
				await get_tree().create_timer(3.5).timeout
				doorsound.play()
				door3.visible = true
				door3inte.process_mode = 0
			if 	interactable.get_parent().get_name() == "door":
				get_tree().change_scene_to_file("res://world_4.tscn")
		else :
			my_array.back().visible = false
			if berceuse1:
				_poserbruit.play()
			alreadyonscreen = false
			Engine.time_scale = 1
			
			
func checkpainting():
	if tab1turn and tab3turn and tab4turn:
		return true
	else :
		print(tab1turn)
		print(tab3turn)
		print(tab4turn)
		return false
		
func turnofflight():
	_lamp1.visible = false
	_lamp3.visible = false
	_lamp4.visible = false
	_lamp2.visible = false
	
func turnonlight():
	_lamp1.visible = true
	_lamp3.visible = true
	_lamp4.visible = true
	_lamp2.visible = true
			
		

func focus(interactable: Interactable) -> void:
	interactable.focused.emit(self)
	_mess.visible = true
	if monstersee:
		if interactable.get_parent().get_name() == "ennemiefirstapparition" and not noduplacatemonster:
			noduplacatemonster = true
			print("monstre vu")
			await get_tree().create_timer(1.2).timeout
			_musicend.play()
			playerlight.visible = false
			lightmonster1.visible = false
			monstreinterractive.process_mode = 4
			monstreinterractive.visible = false
			#_mess.process_mode = 0
			playerscript.avancement = 1
			await get_tree().create_timer(6.4).timeout
			playerlight.visible = true
			monstersee = false
			pentagram.visible = true
			pentagram.process_mode = 0
			satanbook.visible = true
			firstitem.visible = true
			firstitem.process_mode = 0
			timeforsecondscene = true
	if interactable.get_parent().get_name() == "mechant":
		fondmusic.stop()
		animw3.play("run")
		coeurmusic.play()
		bimmechant3.play()
		await get_tree().create_timer(6.4).timeout
		musicspawn.play()
		getweaponlabel.visible = true
		pelleinte.process_mode = 4
		await get_tree().create_timer(13.0).timeout
		timerspawner.process_mode = 0

		

func unfocus(interactable: Interactable) -> void:
	interactable.unfocused.emit(self)
	_mess.visible = false


# Returns the closest overlapping Interactable or null if there isn't one.
func get_closest_interactable() -> Interactable:
	var list: Array[Area3D] = get_overlapping_areas()
	var distance: float
	var closest_distance: float = INF
	var closest: Interactable = null

	for interactable in list:
		distance = interactable.global_position.distance_to(global_position)

		# Sets the first interactable in the list as closest
		if distance < closest_distance:
			closest = interactable as Interactable
			closest_distance = distance

	return closest
	
	


