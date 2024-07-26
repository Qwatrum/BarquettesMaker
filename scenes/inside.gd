extends Node2D

func _ready():
	position = Vector2(576,550)
	
func frame(i):
	$"AnimatedSprite2D".frame = i
