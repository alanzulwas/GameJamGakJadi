extends ColorRect

var _kotak

var _invetory = load("res://Scene/Inventory.tscn")

func _initIsi():
	pass

func _ready():
	_initIsi()
	pass # Replace with function body.

func _process(delta):
	if self.is_visible():
		print(_kotak)
		pass
	pass

func _on_Button_pressed():
	set_visible(false)
