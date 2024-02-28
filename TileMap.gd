extends TileMap

var ondrag :bool =false


func _input(event):
	if event.is_action_pressed("select") and ondrag:
		var clicked_cell: Vector2i = local_to_map(get_local_mouse_position())
		set_cell(0,clicked_cell,1,Vector2.ONE)
		

