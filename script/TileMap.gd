extends TileMap
@onready var ball_scene = preload("res://scene/ball.tscn")
@onready var spring_scene =preload("res://scene/spring.tscn")
var mouse_pos:Vector2i
var used_scene_tile_pos =[]

func _on_sloat_on_drag(data):
	mouse_pos=local_to_map(data.mouse_pos)
	var mouseovertile = get_cell_tile_data(0,mouse_pos)
	var is_placable
	
	if mouseovertile:
		is_placable = mouseovertile.get_custom_data_by_layer_id(0)
	if data.id== 3:
		
		var spring = spring_scene.instantiate()
		get_parent().add_child(spring)
		spring.position = map_to_local(mouse_pos)
		data.is_placed=true
#		print(local_to_map(used_scene_tile_pos[0]),mouse_pos)
		for i in used_scene_tile_pos:
			if mouse_pos == local_to_map(i):
				print("mouse over a scene tile")
	else : 
		if not is_placable:
			set_cell(0,mouse_pos,data.id,data.coordinate)
			data.is_placed=true
	pass # Replace with function body.


func _on_simulation_button_down():
	var ball = ball_scene.instantiate()
	add_child(ball)
	ball.position = $Marker2D.position
	pass # Replace with function body.

