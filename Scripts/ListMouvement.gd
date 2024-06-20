extends Control

@onready var move_btn = $Button
@onready var panel = $Panel
@onready var switch = true 

# Called when the node enters the scene tree for the first time.
func _ready():
	move_btn.connect("pressed", Callable(self, "_on_move_button_pressed"))
	
func _on_move_button_pressed():
	if switch == true: 
		var target_position = Vector2(0,0) #position of target
		var tween = create_tween() # interpolation
		tween.tween_property(panel, "position", target_position, 1.0) #property de l'interpolation
		tween.connect("finished", Callable(self, "_on_tween_finished")) # signal or more connect le tween au func ontweenfinished
		switch = false
	else : if switch == false:
		var target_position = Vector2(0,1000)
		var tween = create_tween() 
		tween.tween_property(panel, "position", target_position, 1.0) 
		tween.connect("finished", Callable(self, "_on_tween_finished")) 
		switch = true
