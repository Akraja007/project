extends Control
@export var start:PackedScene
@onready var credit_container = $"CREDIT Container"
@onready var how_to_play_container = $"how to play Container"


func _on_start_button_button_down():
	get_tree().change_scene_to_packed(start)
	pass # Replace with function body.

func _on_credit_button_toggled(button_pressed):
	pass # Replace with function body.

func _on_exit_button_button_down():
	get_tree().quit()
	pass # Replace with function body.
