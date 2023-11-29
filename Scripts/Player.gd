extends KinematicBody2D

onready var animation = $AnimationPlayer
var speed = 150
var health = 100

var enemy_inattack_range = false
var enemy_attack_cooldown = true
var player_alive = true
var attack_ip = false
var score = 0
var side = false


func _physics_process(delta):
	var velocity = Vector2.ZERO * delta
	var animation_ip = false

	
	enemy_attack()
	update_health()
	Interact()
	show_information()
	hide_information()
	menu()
	
	if health <= 0:
		player_alive = false
		health = 0
		get_tree().change_scene("res://Scenes/Lobby.tscn")
	
	if Input.is_action_pressed("move_up") and animation_ip == false and attack_ip == false:
		velocity.y -= 1
		if attack_ip == false:
			animation.play("Walk_back")
		
	elif Input.is_action_pressed("move_down") and animation_ip == false and attack_ip == false:
		velocity.y += 1
		if attack_ip == false:
			animation.play("Walk_front")
		
	elif Input.is_action_pressed("move_left") and animation_ip == false and attack_ip == false:
		velocity.x -= 1
		if attack_ip == false:
			animation.play("Walk_left")
		
	elif Input.is_action_pressed("move_right") and animation_ip == false and attack_ip == false:
		velocity.x += 1
		if attack_ip == false:
			animation.play("Walk_right")
	
	elif velocity.x == 0 and velocity.y == 0 and attack_ip == false:
		animation.play("Stand_forward")
	
	
	if Input.is_action_pressed("attack_up"):
		animation_ip = true
		attack_ip = true
		global.player_current_attack = true
		$deal_attack_timer.start()
		animation.play("attack_back")
	
	if Input.is_action_pressed("attack_down"):
		animation_ip = true
		attack_ip = true
		global.player_current_attack = true
		$deal_attack_timer.start()
		animation.play("attack_front")
	
	if Input.is_action_pressed("attack_right"):
		animation_ip = true
		attack_ip = true
		global.player_current_attack = true
		$deal_attack_timer.start()
		animation.play("attack_side")
	
	if Input.is_action_pressed("attack_left"):
		animation_ip = true
		attack_ip = true
		side = true
		global.player_current_attack = true
		$deal_attack_timer.start()
		animation.play("attack_side")
		$Turn.start()
	
	if side == true:
		$SimonCowellCocksleeve.flip_h = true
	else:
		$SimonCowellCocksleeve.flip_h = false
	
	velocity = velocity.normalized()
	
	move_and_slide(velocity * speed)


func player():
	pass


func _on_hitbox_body_entered(body):
	if body.has_method("enemy"):
		enemy_inattack_range = true


func _on_hitbox_body_exited(body):
	if body.has_method("enemy"):
		enemy_inattack_range = false


func enemy_attack():
	if enemy_inattack_range and enemy_attack_cooldown == true:
		health = health - 5
		enemy_attack_cooldown = false
		$attack_cooldown.start()
	

func _on_attack_cooldown_timeout():
	enemy_attack_cooldown = true


func _on_deal_attack_timer_timeout():
	$deal_attack_timer.stop()
	global.player_current_attack = false
	attack_ip = false


func update_health():
	var healthbar = $lifebar
	healthbar.value = health
	
	if health >= 100:
		healthbar.visible = false
	else:
		healthbar.visible = true


func _on_regin_timer_timeout():
	if health < 100 and enemy_inattack_range ==  false:
		health = health + 20
		if health > 100:
			health = 100
	if health <= 0:
		health = 0


func collected_information(value):
	score += value
	global.information += value
	print(global.information)


func Interact():
	if Input.is_action_just_pressed("Interact") and global.player_in_npc_zone == true:
		global.interact_with_npc = true
	
	if Input.is_action_just_pressed("Interact") and global.player_in_Napolion_zone == true:
		global.interact_with_npc = true
	
	if Input.is_action_pressed("Interact") and global.player_in_Caesar_zone == true:
		global.interact_with_npc = true


func _on_Turn_timeout():
	side = false


func show_information():
	if Input.is_action_pressed("show_information"):
		global.e_pressed = true

func hide_information():
	if Input.is_action_pressed("hide_information"):
		global.e_pressed = false

func menu():
	if Input.is_action_pressed("Menu"):
		global.menu = true
