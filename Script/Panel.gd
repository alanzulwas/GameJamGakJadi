extends Control

var _kotak
var inventory

func _ready():
	inventory = get_parent().get_parent().inventory

func _isiKotak(angka):
	if inventory[angka][0][0] == "y" :
		$ColorRect/Balok1.color = Color(0,0,0,1)
		$ColorRect/Balok1/Label.text = inventory[angka][0][1]
	if inventory[angka][1][0] == "y" :
		$ColorRect/Balok2.color = Color(0,0,0,1)
		$ColorRect/Balok2/Label.text = inventory[angka][1][1]
	if inventory[angka][2][0] == "y" :
		$ColorRect/Balok3.color = Color(0,0,0,1)
		$ColorRect/Balok3/Label.text = inventory[angka][2][1]
	if inventory[angka][3][0] == "y" :
		$ColorRect/Balok4.color = Color(0,0,0,1)
		$ColorRect/Balok4/Label.text = inventory[angka][3][1]
	if inventory[angka][4][0] == "y" :
		$ColorRect/Balok5.color = Color(0,0,0,1)
		$ColorRect/Balok5/Label.text = inventory[angka][4][1]
	if inventory[angka][5][0] == "y" :
		$ColorRect/Balok6.color = Color(0,0,0,1)
		$ColorRect/Balok6/Label.text = inventory[angka][5][1]
	if inventory[angka][6][0] == "y" :
		$ColorRect/Balok7.color = Color(0,0,0,1)
		$ColorRect/Balok7/Label.text = inventory[angka][6][1]
	if inventory[angka][7][0] == "y" :
		$ColorRect/Balok8.color = Color(0,0,0,1)
		$ColorRect/Balok8/Label.text = inventory[angka][7][1]
	if inventory[angka][8][0] == "y" :
		$ColorRect/Balok9.color = Color(0,0,0,1)
		$ColorRect/Balok9/Label.text = inventory[angka][8][1]

func _isiKotakDiambil(angka1,event):
	var angka
	if _kotak == "kotak1":
		angka = 0
	elif _kotak == "kotak2":
		angka = 1
	elif _kotak == "kotak3":
		angka = 2
	
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			if len(SelfInventory.inventory) < 5:
				if inventory[angka][angka1][0] == "y" :
					inventory[angka][angka1][0] = "n"
					SelfInventory.inventory.append(inventory[angka][angka1][1])
			set_visible(false)

func _initIsi():
	if _kotak == "kotak1":
		_isiKotak(0)
	elif _kotak == "kotak2":
		_isiKotak(1)
	elif _kotak == "kotak3":
		_isiKotak(2)

func _process(delta):
	delta = delta
	if self.is_visible():
		_initIsi()
	else:
		_reset()

func _on_Button_pressed():
	set_visible(false)

func _on_Balok1_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			print(self)
			yield(get_tree().create_timer(0.4),"timeout")
			_isiKotakDiambil(0,event)

func _on_Balok2_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			print(self)
			yield(get_tree().create_timer(0.4),"timeout")
			_isiKotakDiambil(1,event)

func _on_Balok3_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			print(self)
			yield(get_tree().create_timer(0.4),"timeout")
			_isiKotakDiambil(2,event)

func _on_Balok4_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			print(self)
			yield(get_tree().create_timer(0.4),"timeout")
			_isiKotakDiambil(3,event)

func _on_Balok5_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			print(self)
			yield(get_tree().create_timer(0.4),"timeout")
			_isiKotakDiambil(4,event)

func _on_Balok6_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			print(self)
			yield(get_tree().create_timer(0.4),"timeout")
			_isiKotakDiambil(5,event)

func _on_Balok7_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			print(self)
			yield(get_tree().create_timer(0.4),"timeout")
			_isiKotakDiambil(6,event)

func _on_Balok8_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			print(self)
			yield(get_tree().create_timer(0.4),"timeout")
			_isiKotakDiambil(7,event)

func _on_Balok9_input_event(viewport, event, shape_idx):
	viewport = viewport
	shape_idx = shape_idx
	if event is InputEventMouseButton:
		if event.is_pressed():
			Input.set_custom_mouse_cursor(cursor.cursor3, Input.CURSOR_ARROW, Vector2(8,8))
			print(self)
			yield(get_tree().create_timer(0.4),"timeout")
			_isiKotakDiambil(8,event)

func _reset():
	$ColorRect/Balok1.color = Color(1,1,1,1)
	$ColorRect/Balok2.color = Color(1,1,1,1)
	$ColorRect/Balok3.color = Color(1,1,1,1)
	$ColorRect/Balok4.color = Color(1,1,1,1)
	$ColorRect/Balok5.color = Color(1,1,1,1)
	$ColorRect/Balok6.color = Color(1,1,1,1)
	$ColorRect/Balok7.color = Color(1,1,1,1)
	$ColorRect/Balok8.color = Color(1,1,1,1)
	$ColorRect/Balok9.color = Color(1,1,1,1)
	$ColorRect/Balok1/Label.text = ""
	$ColorRect/Balok2/Label.text = ""
	$ColorRect/Balok3/Label.text = ""
	$ColorRect/Balok4/Label.text = ""
	$ColorRect/Balok5/Label.text = ""
	$ColorRect/Balok6/Label.text = ""
	$ColorRect/Balok7/Label.text = ""
	$ColorRect/Balok8/Label.text = ""
	$ColorRect/Balok9/Label.text = ""
