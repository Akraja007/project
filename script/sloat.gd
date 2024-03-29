extends TextureRect
@export var data :OBJ =null 
signal on_drag(data:OBJ)
var drag_preview :Sprite2D
func _ready():
	self.texture=data.texture

func _process(delta):
	if data.is_placed:
		texture=null
		#off drag preview
	pass

func _on_gui_input(event):
	if event.is_action_pressed("select"):
		data.draging = true
		$"../../../../../TileMap".panmode=false
		drag_preview = Sprite2D.new()
		$"../../..".add_child(drag_preview)
		drag_preview.position=get_global_mouse_position()
		drag_preview.texture = data.texture
		drag_preview.set_self_modulate(Color8(255,175,175,255))
	pass 

func _input(event):
	if data.draging:
		drag_preview.position =get_global_mouse_position()
		if event.is_action_released("select"):
			data.draging = false
			drag_preview.free()
			on_drag.emit(data)
			$"../../../../../TileMap".panmode=true
	
	pass # Replace with function body.

func _on_mouse_entered():
	set_self_modulate(Color8(130,130,130,255))

	pass # Replace with function body.

func _on_mouse_exited():
	set_self_modulate(Color8(255,255,255,255))
	pass # Replace with function body.
