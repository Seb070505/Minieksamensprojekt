extends KinematicBody2D

var question1 = 0

func _ready():
	$"Spørgsmål_1_panel".visible = false
	$"Spørgsmål_1_tekst".visible = false
	$"Rigtig_Sprøgsmål_1".visible = false
	$"Forkert_Spørgsmål_1".visible = false
	$"Forkert2_Spørgsmål_1".visible = false
	
	$"Spørgsmål_2_panel".visible = false
	$"Spørgsmål_2_tekst".visible = false
	$"Rigtig_Sprøgsmål_2".visible = false
	$"Forkert_Spørgsmål_2".visible = false
	$"Forkert2_Spørgsmål_2".visible = false
	
	$"Spørgsmål_3_panel".visible = false
	$"Spørgsmål_3_tekst".visible = false
	$"Rigtig_Sprøgsmål_3".visible = false
	$"Forkert_Spørgsmål_3".visible = false
	$"Forkert2_Spørgsmål_3".visible = false


func _physics_process(delta):
	talk_with_Caesar()

func talk_with_Caesar():
	if global.interact_with_npc and global.player_in_Caesar_zone == true and question1 < 1:
		$"Spørgsmål_1_panel".visible = true
		$"Spørgsmål_1_tekst".visible = true
		$"Rigtig_Sprøgsmål_1".visible = true
		$"Forkert_Spørgsmål_1".visible = true
		$"Forkert2_Spørgsmål_1".visible = true

func _on_Zone_body_entered(body):
	if body.has_method("player"):
		global.player_in_Caesar_zone = true


func _on_Zone_body_exited(body):
	global.player_in_Caesar_zone = false
	global.interact_with_npc = false



func _on_Rigtig_Sprgsml_1_pressed():
	$"Spørgsmål_1_tekst".visible = false
	$"Spørgsmål_1_panel".visible = false
	$"Rigtig_Sprøgsmål_1".visible = false
	$"Forkert_Spørgsmål_1".visible = false
	$"Forkert2_Spørgsmål_1".visible = false

	question1 += 1
	if question1 >= 1:
		question1 = 1
	
	$"Spørgsmål_2_panel".visible = true
	$"Spørgsmål_2_tekst".visible = true
	$"Rigtig_Sprøgsmål_2".visible = true
	$"Forkert_Spørgsmål_2".visible = true
	$"Forkert2_Spørgsmål_2".visible = true


func _on_Forkert_Sprgsml_1_pressed():
	$"Spørgsmål_1_panel".visible = true
	$"Spørgsmål_1_tekst".visible = true
	$"Rigtig_Sprøgsmål_1".visible = true
	$"Forkert_Spørgsmål_1".visible = true
	$"Forkert2_Spørgsmål_1".visible = true
	
	$"Spørgsmål_2_panel".visible = false
	$"Spørgsmål_2_tekst".visible = false
	$"Rigtig_Sprøgsmål_2".visible = false
	$"Forkert_Spørgsmål_2".visible = false
	$"Forkert2_Spørgsmål_2".visible = false
	
	$"Spørgsmål_3_panel".visible = false
	$"Spørgsmål_3_tekst".visible = false
	$"Rigtig_Sprøgsmål_3".visible = false
	$"Forkert_Spørgsmål_3".visible = false
	$"Forkert2_Spørgsmål_3".visible = false


func _on_Forkert2_Sprgsml_1_pressed():
	$"Spørgsmål_1_panel".visible = true
	$"Spørgsmål_1_tekst".visible = true
	$"Rigtig_Sprøgsmål_1".visible = true
	$"Forkert_Spørgsmål_1".visible = true
	$"Forkert2_Spørgsmål_1".visible = true
	
	$"Spørgsmål_2_panel".visible = false
	$"Spørgsmål_2_tekst".visible = false
	$"Rigtig_Sprøgsmål_2".visible = false
	$"Forkert_Spørgsmål_2".visible = false
	$"Forkert2_Spørgsmål_2".visible = false
	
	$"Spørgsmål_3_panel".visible = false
	$"Spørgsmål_3_tekst".visible = false
	$"Rigtig_Sprøgsmål_3".visible = false
	$"Forkert_Spørgsmål_3".visible = false
	$"Forkert2_Spørgsmål_3".visible = false


func _on_Rigtig_Sprgsml_2_pressed():
	$"Spørgsmål_2_panel".visible = false
	$"Spørgsmål_2_tekst".visible = false
	$"Rigtig_Sprøgsmål_2".visible = false
	$"Forkert_Spørgsmål_2".visible = false
	$"Forkert2_Spørgsmål_2".visible = false
	
	$"Spørgsmål_3_panel".visible = true
	$"Spørgsmål_3_tekst".visible = true
	$"Rigtig_Sprøgsmål_3".visible = true
	$"Forkert_Spørgsmål_3".visible = true
	$"Forkert2_Spørgsmål_3".visible = true


func _on_Forkert_Sprgsml_2_pressed():
	$"Spørgsmål_1_panel".visible = true
	$"Spørgsmål_1_tekst".visible = true
	$"Rigtig_Sprøgsmål_1".visible = true
	$"Forkert_Spørgsmål_1".visible = true
	$"Forkert2_Spørgsmål_1".visible = true
	
	$"Spørgsmål_2_panel".visible = false
	$"Spørgsmål_2_tekst".visible = false
	$"Rigtig_Sprøgsmål_2".visible = false
	$"Forkert_Spørgsmål_2".visible = false
	$"Forkert2_Spørgsmål_2".visible = false
	
	$"Spørgsmål_3_panel".visible = false
	$"Spørgsmål_3_tekst".visible = false
	$"Rigtig_Sprøgsmål_3".visible = false
	$"Forkert_Spørgsmål_3".visible = false
	$"Forkert2_Spørgsmål_3".visible = false


func _on_Forkert2_Sprgsml_2_pressed():
	$"Spørgsmål_1_panel".visible = true
	$"Spørgsmål_1_tekst".visible = true
	$"Rigtig_Sprøgsmål_1".visible = true
	$"Forkert_Spørgsmål_1".visible = true
	$"Forkert2_Spørgsmål_1".visible = true
	
	$"Spørgsmål_2_panel".visible = false
	$"Spørgsmål_2_tekst".visible = false
	$"Rigtig_Sprøgsmål_2".visible = false
	$"Forkert_Spørgsmål_2".visible = false
	$"Forkert2_Spørgsmål_2".visible = false
	
	$"Spørgsmål_3_panel".visible = false
	$"Spørgsmål_3_tekst".visible = false
	$"Rigtig_Sprøgsmål_3".visible = false
	$"Forkert_Spørgsmål_3".visible = false
	$"Forkert2_Spørgsmål_3".visible = false


func _on_Rigtig_Sprgsml_3_pressed():
	get_tree().change_scene("res://Scenes/Victory.tscn")



func _on_Forkert_Sprgsml_3_pressed():
	$"Spørgsmål_1_panel".visible = true
	$"Spørgsmål_1_tekst".visible = true
	$"Rigtig_Sprøgsmål_1".visible = true
	$"Forkert_Spørgsmål_1".visible = true
	$"Forkert2_Spørgsmål_1".visible = true
	
	$"Spørgsmål_2_panel".visible = false
	$"Spørgsmål_2_tekst".visible = false
	$"Rigtig_Sprøgsmål_2".visible = false
	$"Forkert_Spørgsmål_2".visible = false
	$"Forkert2_Spørgsmål_2".visible = false
	
	$"Spørgsmål_3_panel".visible = false
	$"Spørgsmål_3_tekst".visible = false
	$"Rigtig_Sprøgsmål_3".visible = false
	$"Forkert_Spørgsmål_3".visible = false
	$"Forkert2_Spørgsmål_3".visible = false

func _on_Forkert2_Sprgsml_3_pressed():
	$"Spørgsmål_1_panel".visible = true
	$"Spørgsmål_1_tekst".visible = true
	$"Rigtig_Sprøgsmål_1".visible = true
	$"Forkert_Spørgsmål_1".visible = true
	$"Forkert2_Spørgsmål_1".visible = true
	
	$"Spørgsmål_2_panel".visible = false
	$"Spørgsmål_2_tekst".visible = false
	$"Rigtig_Sprøgsmål_2".visible = false
	$"Forkert_Spørgsmål_2".visible = false
	$"Forkert2_Spørgsmål_2".visible = false
	
	$"Spørgsmål_3_panel".visible = false
	$"Spørgsmål_3_tekst".visible = false
	$"Rigtig_Sprøgsmål_3".visible = false
	$"Forkert_Spørgsmål_3".visible = false
	$"Forkert2_Spørgsmål_3".visible = false
