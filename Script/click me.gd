extends Area2D

var _inventory
var isKotak
var isRoom
var parent

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(8,8))
	isKotak = false
	parent = self.get_parent().name

func _clicked(kotak):
	if kotak == "Area2D1" :
		get_node("/root/"+parent+"/Panel/ColorRect")._kotak = "kotak1"
		isKotak = true
	elif kotak == "Area2D2" :
		get_node("/root/"+parent+"/Panel/ColorRect")._kotak = "kotak2"
		isKotak = true
	elif kotak == "Area2D3" :
		get_node("/root/"+parent+"/Panel/ColorRect")._kotak = "kotak3"
		isKotak = true
	else :
		isRoom = true

func _on_Area2D_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if !get_node("/root/"+parent+"/Panel/ColorRect").is_visible():
		if event is InputEventMouseButton:
			if event.is_pressed():
				Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
				_clicked(self.name)
				yield(get_tree().create_timer(0.4),"timeout")
				if isKotak : 
					get_node("/root/"+parent+"/Panel/ColorRect").set_visible(true)
					isKotak = false
				if isRoom:
					pass
			else:
				Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(8,8))

func _on_Area2D_mouse_entered():
	if !get_node("/root/"+parent+"/Panel/ColorRect").is_visible():
		Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(8,8))

func _on_Area2D_mouse_exited():
	if !get_node("/root/"+parent+"/Panel/ColorRect").is_visible():
		Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(8,8))

func _on_Area2D_Panel_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
		else:
			Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(8,8))

func _on_Area2D_Panel_mouse_entered():
	Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(8,8))

func _on_Area2D_Panel_mouse_exited():
	Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(8,16))
