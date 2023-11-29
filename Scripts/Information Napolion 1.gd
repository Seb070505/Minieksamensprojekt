extends Area2D

export var value = 1

func _physics_process(delta):
	if global.information >= 1:
		queue_free()

func _on_Information_Napolion_1_body_entered(body):
	if body.has_method("player"):
		body.collected_information(value)
		global.show_information += 1
		$Self_queue.start()
	


func _on_Self_queue_timeout():
	queue_free()
