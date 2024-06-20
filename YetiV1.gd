extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed", Callable(self,"_on_SelectBtn_pressed"))
	
func _on_SelectBtn_pressed():
	#var button_grid = get_node("/root/Grid")
	#button_grid.set_selected_button_info(self.text)
	print("allo")


