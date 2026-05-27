extends Node

var tiempo_total = 960
var tiempo_restante = 960

var vidas = 3

var mostrar_mensaje_apagado = false

var timer := Timer.new()
#prueba de guardado
var ruta_guardado = "user://savegame.save"

func _ready():
	add_child(timer)
	timer.wait_time = tiempo_total
	timer.one_shot = true
	timer.start()
	timer.timeout.connect(_on_timeout)

func _process(delta):
	tiempo_restante = timer.time_left

func perder_vida(damage):
	vidas -= damage
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
func guardar_partida():
	var archivo = FileAccess.open(ruta_guardado, FileAccess.WRITE)
	
	var datos = {
		"vidas": vidas,
		"tiempo_restante": tiempo_restante
	}
	
	archivo.store_var(datos)
	print("PARTIDA GUARDADA")

func cargar_partida():
	if FileAccess.file_exists(ruta_guardado):
		var archivo = FileAccess.open(ruta_guardado, FileAccess.READ)
		var datos = archivo.get_var()
		
		vidas = datos["vidas"]
		tiempo_restante = datos["tiempo_restante"]
		
		timer.stop()
		timer.wait_time = tiempo_restante
		timer.start()
		
		print("PARTIDA CARGADA")
