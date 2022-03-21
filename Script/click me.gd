extends Area2D

var _inventory
var isKotak

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(8,8))
	isKotak = false

func _clicked():
	var kotak = str(self)
	if kotak == "Area2D1:[Area2D:1261]" :
		get_node("/root/Scene/Panel/ColorRect")._kotak = "kotak1"
		isKotak = true
	elif kotak == "Area2D2:[Area2D:1263]" :
		get_node("/root/Scene/Panel/ColorRect")._kotak = "kotak2"
		isKotak = true
	elif kotak == "Area2D3:[Area2D:1265]" :
		get_node("/root/Scene/Panel/ColorRect")._kotak = "kotak3"
		isKotak = true
	else :
		isKotak = false

func _on_Area2D_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if !get_node("/root/Scene/Panel/ColorRect").is_visible():
		if event is InputEventMouseButton:
			if event.is_pressed():
				Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
				_clicked()
				print(self)
				yield(get_tree().create_timer(0.4),"timeout")
				if isKotak : 
					get_node("/root/Scene/Panel/ColorRect").set_visible(true)
			else:
				Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(8,8))

func _on_Area2D_mouse_entered():
	if !get_node("/root/Scene/Panel/ColorRect").is_visible():
		Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(8,8))

func _on_Area2D_mouse_exited():
	if !get_node("/root/Scene/Panel/ColorRect").is_visible():
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
