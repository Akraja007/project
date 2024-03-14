extends TileMap
@onready var ball_scene = preload("res://ball.tscn")
var mouse_pos:Vector2

func _on_sloat_on_drag(data):
	mouse_pos=local_to_map(data.mouse_pos)
	if not data.id== 0:
		set_cell(0,mouse_pos,data.id,data.coordinate,2)
	else :
		var ball = ball_scene.instantiate()
		get_parent().add_child(ball)
		ball.position = data.mouse_pos
	pass # Replace with function body.
