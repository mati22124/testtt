print("Test push")
extends KinematicBody2D

var score : int = 0
var pushtest : int = 1
var speed : int = 200
var jumpForce : int = 600
var gravity : int = 800
var vel : Vector2 = Vector2()
onready var sprite : Sprite = get_node("Icon")

func _physics_process(delta):
	vel.x = 0
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
	if Input.is_action_pressed("move_right"):
		vel.x += speed
	vel = move_and_slide(vel, Vector2.UP)

