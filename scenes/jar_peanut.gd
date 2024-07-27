extends StaticBody2D

@onready var GameNode := get_parent()
var inside = preload("res://scenes/inside.tscn")


func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if GameNode.is_valid("inside"):
			var inste = inside.instantiate()
			GameNode.add_child(inste)
			inste.frame(3)
			GameNode.append_children(inste)
