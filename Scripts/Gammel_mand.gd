extends KinematicBody2D


func _physics_process(delta):
	talk_npc()

func _on_Interact_area_body_entered(body):
	if body.has_method("player"):
		global.player_in_npc_zone = true


func _on_Interact_area_body_exited(body):
	global.interact_with_npc = false
	global.player_in_npc_zone = false

func talk_npc():
	if global.interact_with_npc and global.player_in_npc_zone == true:
		$Label.visible = true
		$Panel.visible = true
	else:
		$Label.visible = false
		$Panel.visible = false
