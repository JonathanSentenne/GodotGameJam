extends Button

signal value_changed(new_value)
# Called when the node enters the scene tree for the first time.
func _ready():
	connect("pressed",Callable(self,"_on_Btn_pressed"))

func _on_Btn_pressed():
	var value = self.text
	emit_signal("value_changed", value)

