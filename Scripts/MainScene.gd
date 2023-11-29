extends Node2D

func _ready():
	$Information/Information_1.visible = false
	$Information/Information_2.visible = false
	$Information/Information_3.visible = false
	$Information/Panel.visible = false
	$Information/Panel2.visible = false
	$Information/Panel3.visible = false
	
func _physics_process(delta):
	if global.show_information >= 1 and global.e_pressed == true:
		$Information/Information_1.visible = true
		$Information/Panel.visible = true
		if global.show_information >= 2:
			$Information/Information_2.visible = true
			$Information/Panel2.visible = true
			if global.show_information >= 3:
				$Information/Information_3.visible = true
				$Information/Panel3.visible = true
	elif global.e_pressed == false:
		$Information/Information_1.visible = false
		$Information/Information_2.visible = false
		$Information/Information_3.visible = false
		$Information/Panel.visible = false
		$Information/Panel2.visible = false
		$Information/Panel3.visible = false
	
	
	if global.atkiv_portal == true:
		get_tree().change_scene("res://Scenes/Lobby.tscn")
