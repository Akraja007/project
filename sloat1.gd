extends TextureRect

@export var data :OBJ =null 
signal on_drag(data:OBJ)
var DATA:int

func _ready():
	texture=data.texture
	pass

func _process(delta):
	if data.is_placed:
		texture=null
	pass
	
func _on_gui_input(event):
	if event.is_action_pressed("select"):
		data.draging = true
		data.is_placed = true
	
	pass 
	
func _input(event):
	if data.draging:
		if event.is_action_released("select"):
			data.mouse_pos = get_global_mouse_position()
			data.draging = false
			on_drag.emit(data)
