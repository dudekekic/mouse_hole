extends Node2D

const LEVEL_TIME = 30

func _ready():
	var levelTimer = get_tree().get_root().find_node("Level_timer", true, false)
	levelTimer.connect("timeOut", self, "_handle_timeOut_spotted")
	
func _handle_timeOut_spotted():
	get_tree().change_scene("res://src/MouseHole.tscn")
