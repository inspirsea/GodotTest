extends Area2D

const Util = preload("Util.gd")

func _ready():
	pass # Replace with function body.

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()

func on_click():
	var pos = get_global_mouse_position();
	get_parent()._setActive(Util._getBoardPos(pos))
