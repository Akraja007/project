extends Control
@export var start:PackedScene
@onready var credit_container = $"CREDIT Container"
@onready var how_to_play_container = $"how to play Container"


func _on_start_button_button_down():
	get_tree().change_scene_to_packed(start)
	pass # Replace with function body.

func _on_credit_button_toggled(button_pressed):
	var tween =create_tween()
	if button_pressed:
		tween.tween_property(how_to_play_container,"visible",false,0.1)
		tween.tween_property(credit_container,"position:y",120,1)
	else:
		tween.tween_property(credit_container,"position:y",320,1)
		tween.tween_property(how_to_play_container,"visible",true,0.1)
	pass # Replace with function body.

func _on_exit_button_button_down():
	get_tree().quit()
	pass # Replace with function body.
