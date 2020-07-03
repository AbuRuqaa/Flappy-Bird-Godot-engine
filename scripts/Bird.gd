extends Node2D

signal game_over#this signal will go to the main scene to "tell" it that the player died

var screen_size


var vel = Vector2()#The velocity for the player(this is need for move)

export var gravity = 500.0
#this will let the player jump
export var speed = Vector2(0,-150)#the x for the player won't be moving because in this game the bg is the things that will be moving

#Get the screen size
func _ready():	
	screen_size = get_viewport_rect().size

#player movment
func _physics_process(delta):
	vel.y += gravity * delta#add the gravity to the player to make sure he will fall down

	$KinematicBody2D/AnimatedSprite.animation = "flying"
	
	if Input.is_action_just_pressed("move"):
		vel += speed #this will let the player jump(or just add the speed y value to vel y  value)
		
		
	position.y = clamp(position.y,-10, screen_size.y)#Make sure that the player won't get out off screen too far	
	position += vel * delta#update the player position
	
		
	

func game_over():

	emit_signal("game_over")#send the signal
	
func _on_Area2D_area_entered(area):
	game_over()
	
