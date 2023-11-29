extends CanvasLayer

func _ready():
	$Button2.visible = false
	$Button3.visible = false
	$Panel.visible = false
	$Button4.visible = false


func _physics_process(delta):
	if global.menu == true:
		$Button2.visible = true
		$Button3.visible = true
		$Panel.visible = true
		$Button4.visible = true
	elif global.menu == false:
		$Button2.visible = false
		$Button3.visible = false
		$Panel.visible = false
		$Button4.visible = false

func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/Lobby.tscn")
	global.menu = false


func _on_Button3_pressed():
	global.menu = false


func _on_Button4_pressed():
	global.tutorial = true
	global.menu = false
	
