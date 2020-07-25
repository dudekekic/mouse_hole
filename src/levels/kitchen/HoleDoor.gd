extends Area2D
	
func _input(event):
	if event.is_action_pressed("ui_interact"):
		if get_overlapping_bodies().size() > 1:
			get_tree().change_scene("res://src/MouseHole.tscn")


