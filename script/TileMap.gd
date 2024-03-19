extends TileMap
@onready var ball_scene = preload("res://scene/ball.tscn")
@onready var spring_scene =preload("res://scene/spring.tscn")
var mouse_pos:Vector2

func _on_sloat_on_drag(data):
	mouse_pos=local_to_map(data.mouse_pos)
	print(get_used_cells(0))
	print(get_used_cells_by_id(0,2))
	if data.id== 3:
		var spring = spring_scene.instantiate()
		get_parent().add_child(spring)
		spring.position = map_to_local(local_to_map(data.mouse_pos))
	else : 
		set_cell(0,mouse_pos,data.id,data.coordinate)
	pass # Replace with function body.


func _on_simulation_button_down():
	var ball = ball_scene.instantiate()
	add_child(ball)
	ball.position = $Marker2D.position
	pass # Replace with function body.

