extends TextureRect

@export var data :OBJ
signal sent_dat
# Called when the node enters the scene tree for the first time.
func _ready():
	texture=data.texture
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
