extends Node2D

var gem = false
onready var animation = $Animationer
onready var animation2 = $AnimationPlayer

func _ready():
	$Gem_timer.start()


# warning-ignore:unused_argument
func _physics_process(delta):
	if gem == false:
		animation.play("Spawn")
	elif gem == true:
		animation.play("Gem")
	
	animation2.play("Portal")


func _on_Gem_timer_timeout():
	gem = true


func _on_Portal_1_body_entered(body):
	if body.has_method("player") and global.atkiv_portal == false:
		get_tree().change_scene("res://Scenes/MainScene.tscn")


func _on_Portal_2_body_entered(body):
	if body.has_method("player") and global.atkiv_portal == true:
		get_tree().change_scene("res://Scenes/Level_2.tscn")
