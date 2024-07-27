extends Control

var elements = ["barquette", "inside", "topping"]
var nodes = []


func _ready():
	$"Remove_btn".hide()
	$"Finish_btn".hide()
	$"Table_btn".show()
	$"Text".show()


func _on_table_btn_button_down():
	$"Table".show()
	$"Table_btn".hide()
	$"Text".hide()
	elements = []

func is_valid(el):
	if el == "barquette":
		if el in elements:
			return false
		else:
			elements.append(el)
			$"Remove_btn".show()
			$"Finish_btn".show()
			return true
			
	
	if el == "inside":
		if el in elements:
			return false
		elif "barquette" in elements:
			elements.append(el)
			return true
			
		else:
			return false
			
	if el == "topping":
		if el in elements:
			return false
		elif "inside" in elements:
			elements.append(el)
			return true
			
		else:
			return false
	


func _on_finish_btn_button_down():
	$"Remove_btn".hide()
	$"Finish_btn".hide()
	await get_tree().create_timer(2).timeout
	clear()
	$"Text".show()
	$"Table_btn".show()


func _on_remove_btn_button_down():
	elements = []
	$"Remove_btn".hide()
	$"Finish_btn".hide()
	
	clear()
	

func clear():
	for e in nodes:
		e.queue_free()
	
	nodes = []
	

func append_children(child):
	nodes.append(child)
