extends Node2D

func _physics_process(delta):
	if Input.is_action_pressed("Interact"):
		get_tree().change_scene("res://Scenes/Lobby.tscn")
