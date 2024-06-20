extends Sprite2D

var pos: Vector2 = Vector2.ZERO
const speed: float = 0.5
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(100,200)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += speed;
