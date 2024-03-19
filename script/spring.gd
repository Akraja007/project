extends Area2D
@export var power:int=500

func _on_body_entered(body):
	if body.name=="ball":
		body.set_axis_velocity(Vector2i.UP*power)
	pass
