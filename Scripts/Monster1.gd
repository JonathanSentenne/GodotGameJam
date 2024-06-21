extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	var monster1 = get_node("%Button")
	monster1.connect("value_changed", Callable(self, "_on_btn1_value_changed"))

func _on_btn1_value_changed(new_value):
	self.text = new_value
