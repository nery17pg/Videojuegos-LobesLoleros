extends Node

var tiempo_total = 60
var tiempo_restante = 60

var vidas = 3

var timer := Timer.new()

func _ready():
	add_child(timer)
	timer.wait_time = tiempo_total
	timer.one_shot = true
	timer.start()
	timer.timeout.connect(_on_timeout)

func _process(delta):
	tiempo_restante = timer.time_left

func perder_vida():
	vidas -= 1
	print("Vidas: ", vidas)
	
	if vidas <= 0:
		_derrota()
		
func _on_timeout():
	if vidas > 0:
		_victoria()
	else:
		_derrota()
		
func _victoria():
	get_tree().change_scene_to_file("res://game/Ganaste.tscn")

func _derrota():
	get_tree().change_scene_to_file("res://game/Derrota.tscn")

#func _on_timeout():
#	get_tree().change_scene_to_file("res://game/finjuego.tscn")
