extends Node


func _on_play_toggled(button_pressed):
	if not button_pressed:
		get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_back_pressed():
	get_tree().change_scene_to_file("res://ui/main_menu.tscn")
	pass # Replace with function body.
