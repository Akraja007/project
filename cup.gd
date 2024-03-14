extends Area2D

func _on_body_entered(body):
	if body.name=="ball":
		print("level over")
	pass # Replace with function body.


#create nodelevel script export level coin and other obj send data into 
# a level and level send to god 
