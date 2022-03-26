extends Node

var cursor1 = preload("res://Asset/Roret_Cursor/png/cursor_default.png")
var cursor2 = preload("res://Asset/Roret_Cursor/png/cursor_select.png")
var cursor3 = preload("res://Asset/Roret_Cursor/png/cursor_select_tap.png")

func _ready():
	Input.set_custom_mouse_cursor(cursor.cursor1, Input.CURSOR_ARROW, Vector2(8,8))
