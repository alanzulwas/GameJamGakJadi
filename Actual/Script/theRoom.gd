extends Control

var _ruangan
var inventory

func _ready():
	pass

func _objectTerpilih(roomName,objectName):
	for i in range(RoomObject.inventory.size()):
		if roomName in RoomObject.inventory[i][0]:
			for j in range(RoomObject.inventory[i][1].size()):
				if objectName in RoomObject.inventory[i][1][j][0]:
					selfInventory.inventory.append(RoomObject.inventory[i][1][j][0])
					RoomObject.inventory[i][1][j][1] = "n"

func _orangTerpilih(roomName,objectName):
	if roomName in "Ruangan1":
		if objectName in "O1":
			get_node("/root/"+roomName+"/"+objectName).cekIsi()
			print(selfInventory.inventory)

func _process(delta):
	delta = delta
#	for i in range(selfInventory.inventory.size()):
#		if selfInventory.inventory[i] in ""
	$Inventory.text = str(selfInventory.inventory)
	_initTheRoom()

func _initTheRoom():
	for i in range(RoomObject.inventory.size()):
		if self.name in RoomObject.inventory[i][0]:
			for j in range(RoomObject.inventory[i][1].size()):
				if "y" in RoomObject.inventory[i][1][j][1]:
					get_node("/root/"+self.name+"/"+RoomObject.inventory[i][1][j][0]).visible = true
				if "n" in RoomObject.inventory[i][1][j][1]:
					get_node("/root/"+self.name+"/"+RoomObject.inventory[i][1][j][0]).visible = false

func _combineObject(dataFirst, dataSecond):
	var j
	var k
	var idx = -1
	var idy = -1
	
	for i in range(selfInventory.inventory.size()):
		if selfInventory.inventory[i] == dataFirst:
			idx = i
	
	for i in range(selfInventory.inventory.size()):
		if selfInventory.inventory[i] == dataSecond:
			idy = i
	
	if idx != -1 and idy != -1:
		j = [selfInventory.inventory[idx],selfInventory.inventory[idy]]
		if j == ["B1","A4"]:
			selfInventory.inventory.append("C4")
		elif j == ["A2","A3"]:
			selfInventory.inventory.append("C2")
