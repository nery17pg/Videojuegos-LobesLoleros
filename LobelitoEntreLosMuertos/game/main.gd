extends Node2D


#El nodo estatua está oculto para que puedan ver la aparición de la anomalía
const LightTexture = preload("res://art/Light.png")
const GRID_SIZE = 350
var anomalie_actual = null #prueba menu
@onready var label_feedback = $CanvasLayer/FeedbackLabel#prueba menu

#Prueba menuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu


@onready var menu = $CanvasLayer/MenuAnomalias

	
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_RIGHT:
			menu.visible = not menu.visible



var display_width = ProjectSettings.get("display/window/size/viewport_width")
var display_height = ProjectSettings.get("display/window/size/viewport_height")
# Called when the node enters the scene tree for the first time.
func _ready():
	
	# $RandomTimer.start_random() # Se inicializa el timer de la escena main (me gustaría cambiarlo más adelante a que cada anomalía tenga su timer o algo así
	# Anomalías de primer nivel
	var grupoAnomalias = get_tree().get_nodes_in_group("anomalias")
	print(grupoAnomalias)
	for a in grupoAnomalias:
		a.signal_wanna_spawn.connect(_on_anomaly_wanna_spawn)
		
	# Se instancian las anomalías, que por ahora son solo dos
	# Y se añaden al array de anomalías, la idea es que haya varios arrays de anomalías por escenario (los descritos en main)
	# Para aumentar las probabilidades de que ocurra una anomalía se puede agregar varias veces al array
	# En la clase de anomalías se puede consultar las propiedades que contienen cada una de ellas

func _on_anomaly_wanna_spawn(anomaly):
	print("LLEGÓ SEÑAL:", anomaly)
	var allowedSpawns = anomaly.spawns
	var freesSpawns = []
	for sp in allowedSpawns:
		if sp.ocupado == false && sp.on_waiting_time == false:
			freesSpawns.append(sp)
			
	if freesSpawns.size() == 0 || anomaly.visible:
		return #quiero que si no hay espacios libres pos que no haga nada
	else:
		var spawnPoint = freesSpawns.pick_random()	
		anomaly.position = spawnPoint.position
		anomaly.visible = true
		spawnPoint.ocupado = true
		spawnPoint.anomaly_actual = anomaly
		
		anomalie_actual = anomaly #prueba
		
		
#prueba
func validar_reporte(tipo_reportado):
	print("SE PRESIONÓ BOTÓN:", tipo_reportado)
	if anomalie_actual == null:
		print("No hay anomalía activa")
		return
	
	print("Reporte:", tipo_reportado)
	print("Real:", anomalie_actual.type)

	if anomalie_actual.type == tipo_reportado:
		mostrar_mensaje("Correcto", Color.GREEN)
	else:
		mostrar_mensaje("Incorrecto", Color.RED)
		
func mostrar_mensaje(texto, color):
	label_feedback.text = texto
	label_feedback.modulate = color
	label_feedback.visible = true

	await get_tree().create_timer(1.0).timeout

	label_feedback.visible = false
