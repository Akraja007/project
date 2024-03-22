extends TileMap
@onready var ball_scene = preload("res://scene/ball.tscn")
@onready var spring_scene =preload("res://scene/spring.tscn")
var used_scene_tile_pos =[]

func is_placble(m_t_pos:Vector2i):
	var mouseovertile = get_cell_tile_data(0,m_t_pos)
	if mouseovertile == null:
		for i in used_scene_tile_pos:
			if m_t_pos == local_to_map(i):
				return false
		return true
	else :
		return false
	pass
	
func _on_sloat_on_drag(data):
	var mtile_pos=local_to_map(data.mouse_pos)
	if(is_placble(mtile_pos)):
		if data.id== 3:
			var spring = spring_scene.instantiate()
			get_parent().add_child(spring)
			spring.position = map_to_local(mtile_pos)
			data.is_placed=true
		else :
			set_cell(0,mtile_pos,data.id,data.coordinate)
			data.is_placed=true

func _on_simulation_toggled(button_pressed):
	if button_pressed:
		var ball=ball_scene.instantiate()
		get_parent().add_child(ball)
		ball.position = $Marker2D.position
		$"../Control/simulation".queue_free()
		$"../Control/Panel".queue_free()
	pass # Replace with function body.
