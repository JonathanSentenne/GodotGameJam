extends GridContainer

var buttons = []
var selected_button_info = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	for x in range(4):
		for y in range(4):
			var button = get_node("Grid/Button%d%d" % [x * 4 + y])
			buttons.append(button)
			var Func = Callable(self, "_on_Button_pressed")
			button.connect("pressed", Func)

func _on_Button_pressed(x, y):
	selected_button_info = "Button pressed at (%d, %d)" % [x, y]
	print(selected_button_info)


