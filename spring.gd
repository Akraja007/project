extends Area2D
@export var power:int=600

func _on_body_entered(body):
	if body.name=="ball":
		body.apply_central_impulse(Vector2i.UP*power)
	pass
