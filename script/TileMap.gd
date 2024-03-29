extends TileMap
@export var scene:Array[PackedScene]
var used_scene_tile_pos =[]
var gamestarted :bool =false
var panmode:bool =true
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
	var mtile_pos=local_to_map(get_global_mouse_position())
	if(is_placble(mtile_pos)):
		match data.id:
			1:
				var spick = scene[1].instantiate()
				add_child(spick)
				spick.position = map_to_local(mtile_pos)
				data.is_placed=true
			2:
				var fan =scene[2].instantiate()
				add_child(fan)
				fan.position = map_to_local(mtile_pos)
				data.is_placed=true
			3:
				var spring =scene[3].instantiate()
				add_child(spring)
				spring.position = map_to_local(mtile_pos)
				data.is_placed=true
			_:
				set_cell(0,mtile_pos,data.id,data.coordinate)
				data.is_placed=true

func _on_simulation_toggled(button_pressed):
	if button_pressed:
		var ball=scene[0].instantiate()
		get_parent().add_child(ball)
		ball.position = $Marker2D.position
		$"../CanvasLayer/Control/simulation".queue_free()
		$"../CanvasLayer/Control".queue_free()
		$Camera2D.queue_free( )
		panmode=false
	pass # Replace with function body.
func _input(event):
	if panmode:
		if event is InputEventMouseMotion and Input.is_action_pressed("select"):
			$Camera2D.position -=event.relative*2
	pass
