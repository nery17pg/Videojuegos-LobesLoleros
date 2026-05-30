extends Camera2D
var rng = RandomNumberGenerator.new()
var duration = 0
var force


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_to_group("camera")



func _process(delta:float) -> void:
	if duration > 0:
		var forceX = rng.randf_range(-1,1) * force
		var forceY = rng.randf_range(-1,1) * force
		
		offset = Vector2(forceX, forceY)
		
		duration -= delta
		
func shake_camera(shakeForce, shakeDuration):
	print("entré a la función")
	duration = shakeDuration
	force = shakeForce

func mostrar_sprite_temporal(duracion: float) -> void:
	$Sprite2D.z_index = 1000
	$Sprite2D.visible = true
	await get_tree().create_timer(duracion).timeout
	$Sprite2D.visible = false
