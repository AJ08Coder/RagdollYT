extends Node2D

var power = 100

func _physics_process(delta):
	var axis = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var axis_y = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
	$Body.apply_impulse(Vector2.ZERO, Vector2.RIGHT * axis * power)
	$Body.apply_impulse(Vector2.ZERO, Vector2.UP * axis_y * power)
