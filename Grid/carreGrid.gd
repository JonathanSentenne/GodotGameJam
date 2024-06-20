extends Control

var est_ouvert = false

# Called when the node enters the scene tree for the first time.
func _ready():
	close()

func close():
	visible = false
	est_ouvert = true

func open():
	visible = true
	est_ouvert = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("i"):
		if est_ouvert:
			close()
		else: 
			open()
