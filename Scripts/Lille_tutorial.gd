extends CanvasLayer

func _physics_process(delta):
	if global.tutorial == true:
		$Panel.visible = true
		$Label.visible = true
		$Button.visible = true
	elif global.tutorial == false:
		$Panel.visible = false
		$Label.visible = false
		$Button.visible = false

func _on_Button_pressed():
	global.tutorial = false
