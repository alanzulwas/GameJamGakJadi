extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(16,16))

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(16,16))
			print("press")
			get_node("/root/Scene/Panel/ColorRect").set_visible(true)
		else:
			Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(16,16))
			print("unpressed")

func _on_Area2D_mouse_entered():
	Input.set_custom_mouse_cursor(cursor.cursor2, Input.CURSOR_ARROW, Vector2(16,16))
	print("enter")

func _on_Area2D_mouse_exited():
	Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(16,16))
	print("exit")
