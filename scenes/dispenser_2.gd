extends StaticBody2D
@onready var GameNode := get_parent()
var barquette = preload("res://scenes/barquette.tscn")

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if GameNode.is_valid("barquette"):
			var inste = barquette.instantiate()
			GameNode.add_child(inste)
			inste.frame(2)
