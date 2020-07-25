extends Node

onready var timer = get_node("Timer")
onready var node = get_parent().get_parent()
onready var time = node.LEVEL_TIME
signal timeOut

func _ready():
	$TextureRect/RichTextLabel.bbcode_text = str(time)
	timer.set_wait_time(time)
	timer.start()
	
func _process(delta):
	$TextureRect/RichTextLabel.bbcode_text = str(int(timer.get_time_left()))

func _on_Timer_timeout():
	emit_signal("timeOut")
	timer.stop()
