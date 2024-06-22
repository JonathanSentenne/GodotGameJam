class_name Monster
extends Button

@export var monsterName = "no name"

func getInfo():
	return self.monsterName
	
#func _on_Btn_pressed():
	#var value = self.text
	#emit_signal("value_changed", value)

