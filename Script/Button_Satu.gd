extends Button
var dapat
var hasil = ["kucing","anjing","tas","kacamata","adik"]

func _ready():
	dapat = 0

func _on_Button_pressed():
	print(SelfInventory.inventory,len(SelfInventory.inventory))

func correctionObject(object):
	for i in range(hasil.size()):
		if hasil[i].find(object) != -1:
			dapat += 1

func _on_Button_cekIsi_pressed():
	if SelfInventory.inventory.size() == 5 :
		for x in SelfInventory.inventory:
			correctionObject(x)
		if dapat == 5:
			print("Great!")
		else:
			print("Lose!")
		
	else:
		print("Object tidak cukup")
