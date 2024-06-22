class_name Teacher
extends Panel

var monsters := []

func _ready():
	roolCall()


func roolCall():
	for child in get_children():
		if child.has_method("getInfo"):
			var monsterName = child.getInfo()
			monsters.push_back(monsterName)
		print("Monster: ",monsters)

