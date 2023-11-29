extends Node2D

func _physics_process(delta):
	if global.information >= 4:
		$Wall1.hide()
		get_node("Kollision/Wall_1").disabled = true
	
	if global.information >= 5:
		$Wall2.hide()
		get_node("Kollision/Wall_2-1").disabled = true
		get_node("Kollision/Wall_2-2").disabled = true
	
	if global.information >= 6:
		$TileMap2.hide()
		get_node("Kollision/CollisionShape2D").disabled = true
		get_node("Kollision/CollisionShape2D2").disabled = true
