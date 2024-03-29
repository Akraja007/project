extends Area2D
@export var power:int=700

func _ready():
	var tilemap_level =get_parent()
	tilemap_level.used_scene_tile_pos.append(self.position)
	pass
	
func _on_body_entered(body):
	if body.name=="ball":
		body.set_axis_velocity(Vector2i.RIGHT*power)
	pass
