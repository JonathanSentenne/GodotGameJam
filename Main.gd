extends Node2D

var nodes = [
	preload("res://InstantiateMonster.tscn"),
	preload("res://InstantiateMonster2.tscn"),
	preload("res://InstantiateMonster3.tscn"),
	preload("res://InstantiateMonster4.tscn"),
	preload("res://InstantiateMonster5.tscn"),
	preload("res://InstantiateMonster6.tscn"),
	preload("res://InstantiateMonster7.tscn"),
	preload("res://InstantiateMonster8.tscn"),
	preload("res://InstantiateMonster9.tscn"),
	preload("res://InstantiateMonster10.tscn")
]

var placeholders = []

# Called when the node enters the scene tree for the first time.
func _ready():
	
	placeholders.append($Control/Panel/Placeholder)
	placeholders.append(get_node("Control/Panel/Placeholder2"))
	placeholders.append(get_node("Control/Panel/Placeholder3"))

	
	inst()
	pass # Replace with function body.


func inst():
	var selectedNodes = []
	
	while selectedNodes.size() < 3:
		var index = randi() % nodes.size()
		var node = nodes[index]
		if !selectedNodes.has(node):
			selectedNodes.append(node)
			
	for i in range(selectedNodes.size()):
		var instance = selectedNodes[i].instantiate()
		var chosenPlaceholder = placeholders[i % placeholders.size()]
		instance.position = chosenPlaceholder.position
		var panel = get_node("Control/Panel")
		panel.add_child(instance)

