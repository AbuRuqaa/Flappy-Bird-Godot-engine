extends Node2D



func _ready():
	print("Ho")
	$Death.hide()
	$Bird.connect("game_over", self, "game_over_show")
	


func game_over_show():
	$Death.set_position($Bird.position)
	$Death.visible = true
	
	get_tree().paused = true
	

	
	
	

