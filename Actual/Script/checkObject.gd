extends Sprite
var dapat
var hasil = ["A1","B2","B3","C4","B4"]

func _ready():
	dapat = 0

func correctionObject(object):
	for i in range(hasil.size()):
		if hasil[i].find(object) != -1:
			dapat += 1

func cekIsi(): 
	if selfInventory.inventory.size() == 5 :
		for x in selfInventory.inventory:
			correctionObject(x)
		if dapat == 5:
			print("Great!")
		else:
			print("Lose!")
		
	else:
		print("Object tidak cukup")
