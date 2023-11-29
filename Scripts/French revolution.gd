extends Node2D

func _ready():
	get_node("Kollision_door/Door").disabled = false
	get_node("Kollision_door/Wall_1").disabled = false
	get_node("Kollision_door/Wall_2").disabled = false

func _physics_process(delta):
	if global.information >= 1:
		$Wall1.hide()
		get_node("Kollision_door/Wall_1").disabled = true
	
	if global.information >= 2:
		$Wall2.hide()
		get_node("Kollision_door/Wall_2").disabled = true
	
	if global.information >= 3:
		$Door_to_Napolion.hide()
		get_node("Kollision_door/Door").disabled = true
