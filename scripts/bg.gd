extends Node2D


var speed = 30

var positive_check = false
var negative_check = true
func _process(delta):
	var vel = Vector2()
	#Let the screen move
	if negative_check:#when this is true the bg will move to the left
		vel.x -= speed
	if positive_check:#
		vel.x += speed
	
	if position.x <= -2250:
		position.x = 15
		negative_check = false
		positive_check = true
	elif position.x >= 100:	
		negative_check = true
		positive_check = false
		
		
		
	
	position.x += vel.x * delta





