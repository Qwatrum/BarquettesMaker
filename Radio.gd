extends StaticBody2D

@onready var GameNode := get_parent()


func _on_input_event(viewport, event, shape_idx):
	
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		GameNode.music()
		
