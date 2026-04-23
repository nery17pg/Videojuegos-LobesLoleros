extends Node2D

const LightTexture = preload("res://art/Light.png")
const GRID_SIZE = 350

var anomalie_actual = null
var anomalie_hover = null  

@onready var label_feedback = $CanvasLayer/FeedbackLabel
@onready var menu = $CanvasLayer/MenuAnomalias


func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_RIGHT:

			#  abre menú si estás sobre una anomalía
			if anomalie_hover != null:
				print("CLICK EN:", anomalie_hover)

				anomalie_actual = anomalie_hover
				menu.visible = true
			else:
				# comportamiento original (opcional)
				menu.visible = not menu.visible


var display_width = ProjectSettings.get("display/window/size/viewport_width")
var display_height = ProjectSettings.get("display/window/size/viewport_height")


func _ready():
	$CanvasLayer/ConfirmationDialog.visible = false

	var grupoAnomalias = get_tree().get_nodes_in_group("anomalias")
	print(grupoAnomalias)

	for a in grupoAnomalias:
		a.signal_wanna_spawn.connect(_on_anomaly_wanna_spawn)

		#  detectar hover
		var area = a.get_node("Area2D")

		area.mouse_entered.connect(func():
			anomalie_hover = a
		)

		area.mouse_exited.connect(func():
			if anomalie_hover == a:
				anomalie_hover = null
		)


func _on_anomaly_wanna_spawn(anomaly):
	print("LLEGÓ SEÑAL:", anomaly)

	var allowedSpawns = anomaly.spawns
	var freesSpawns = []

	for sp in allowedSpawns:
		if sp.ocupado == false && sp.on_waiting_time == false:
			freesSpawns.append(sp)
			
	if freesSpawns.size() == 0 || anomaly.visible:
		return
	else:
		var spawnPoint = freesSpawns.pick_random()	
		anomaly.position = spawnPoint.position
		anomaly.current_spawn = spawnPoint
		anomaly.visible = true
		spawnPoint.ocupado = true
		spawnPoint.anomaly_actual = anomaly
		


func validar_reporte(tipo_reportado):
	print("SE PRESIONÓ BOTÓN:", tipo_reportado)

	if anomalie_actual == null:
		print("No hay anomalía activa")
		return
	
	print("Reporte:", tipo_reportado)
	print("Real:", anomalie_actual.type)

	if anomalie_actual.type == tipo_reportado:
		anomalie_actual.visible = false
		var spawn = anomalie_actual.current_spawn
		spawn.ocupado = false
		spawn.anomaly_actual = null
		spawn.on_waiting_time = true 
		spawn.get_node("RandomTimer").start_random()
		
		
		mostrar_mensaje("Correcto", Color.GREEN)
	else:
		mostrar_mensaje("Incorrecto", Color.RED)


func mostrar_mensaje(texto, color):
	label_feedback.text = texto
	label_feedback.modulate = color
	
	
	
	label_feedback.visible = true

	await get_tree().create_timer(1.0).timeout

	label_feedback.visible = false


func _on_confirmation_dialog_confirmed() -> void:
	get_tree().change_scene_to_file("res://game/inside.tscn")
