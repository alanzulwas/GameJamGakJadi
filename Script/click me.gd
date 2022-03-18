extends Area2D

var _inventory

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(16,16))

func _clicked():
	var kotak = str(self)
	if kotak == "Area2D1:[Area2D:1252]" :
		get_node("/root/Scene/Panel/ColorRect")._kotak = "kotak1"
	elif kotak == "Area2D2:[Area2D:1254]" :
		get_node("/root/Scene/Panel/ColorRect")._kotak = "kotak2"
	elif kotak == "Area2D3:[Area2D:1256]" :
		get_node("/root/Scene/Panel/ColorRect")._kotak = "kotak3"
	else :
		print("tidak")

func _on_Area2D_input_event(viewport, event, shape_idx):
	if !get_node("/root/Scene/Panel/ColorRect").is_visible():
		if event is InputEventMouseButton:
			if event.is_pressed():
				Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(16,16))
				_clicked()
				get_node("/root/Scene/Panel/ColorRect").set_visible(true)
			else:
				Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(16,16))

func _on_Area2D_mouse_entered():
	if !get_node("/root/Scene/Panel/ColorRect").is_visible():
		Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(16,16))

func _on_Area2D_mouse_exited():
	if !get_node("/root/Scene/Panel/ColorRect").is_visible():
		Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(16,16))
