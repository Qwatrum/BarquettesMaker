extends Control

var elements = []


func _on_table_btn_button_down():
	$"Table".show()
	$"Table_btn".hide()
	$"Text".hide()

func is_valid(el):
	if el == "barquette":
		if el in elements:
			return false
		else:
			elements.append(el)
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
	
