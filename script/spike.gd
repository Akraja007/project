extends Area2D

func _ready():
	var tilemap_level =get_parent()
	tilemap_level.used_scene_tile_pos.append(self.position)
	pass

func _on_body_entered(body):
	if body.name=="ball":
		body.set_freeze_enabled(true)
		print("gamer over")
	pass # Replace with function body.
