extends PointLight2D

var luz_encendida = true

func _physics_process(delta):
	position = get_global_mouse_position()

	if Input.is_action_just_pressed("toggle_light"):
		luz_encendida = !luz_encendida
		visible = luz_encendida
