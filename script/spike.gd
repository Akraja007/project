extends Area2D

func _ready():
	var tilemap_level =get_parent()
	tilemap_level.used_scene_tile_pos.append(self.position)
	pass

func _on_body_entered(body):
	if body.name=="ball":
		get_parent().get_node("../CanvasLayer/Control/CenterContainer").show()
	pass # Replace with function body.
