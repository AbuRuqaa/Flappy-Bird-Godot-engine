extends Control

signal pressed

func _ready():
	pass



func _on_Button_pressed():
	get_tree().change_scene("res://Scene/Main.tscn")
	emit_signal("pressed")
	get_tree().paused = false
	
	

func _on_Button2_pressed():

	emit_signal("pressed")	
	get_tree().quit()
