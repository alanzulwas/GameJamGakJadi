extends Area2D

var _inventory
var isObject
var isOrang
var isPintu
var parent

# Called when the node enters the scene tree for the first time.
func _ready():
	isObject = false
	parent = self.get_parent().name
	if self.name == "Area2D":
		get_parent().get_node("Label").text = parent


#=========================================== Cursor Customization ===================================
func _clicked(kotak):
	if "O1" in kotak or "O2" in kotak:
		isOrang = true
	elif "Ruangan" in kotak :
		isPintu = true
	else :
		isObject = true

func _on_Area2D_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			_clicked(get_parent().name)
			yield(get_tree().create_timer(0.4),"timeout")
			if isObject : 
				print("Object Terpencet")
				isObject = false
				get_parent().get_parent()._objectTerpilih(get_parent().get_parent().name,get_parent().name)
			elif isOrang:
				isOrang = false
				get_parent().get_parent()._orangTerpilih(get_parent().get_parent().name,get_parent().name)
				print("Orang Terpencet")
			elif isPintu:
				isPintu = false
				if get_tree().change_scene("res://Actual/Scene/"+self.name+".tscn") != OK :
					print ("An unexpected error occured when trying to switch to the Readme scene")
				print("Pintu Terpencet")
		else:
			Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(8,8))

func _on_Area2D_mouse_entered():
	Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(8,8))

func _on_Area2D_mouse_exited():
	Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(8,8))
