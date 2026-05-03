extends Node2D

# Precarga de la textura de luz
const LightTexture = preload("res://art/Light.png")
# Tamaño de la cuadrícula
const GRID_SIZE = 350

# Referencia a la anomalía actualmente seleccionada
var anomalie_actual = null
# Referencia a la anomalía sobre la que está el mouse
var anomalie_hover = null  

# Referencia al label que muestra retroalimentación al jugador
@onready var label_feedback = $CanvasLayer/FeedbackLabel
# Referencia al menú de anomalías
@onready var menu = $CanvasLayer/MenuAnomalias

func _input(event):
	# Detecta eventos de entrada del mouse
	if event is InputEventMouseButton and event.pressed:
		# Verifica si se hizo clic derecho
		if event.button_index == MOUSE_BUTTON_RIGHT:

			# Abre el menú si el mouse está sobre una anomalía
			if anomalie_hover != null:
				print("CLICK EN:", anomalie_hover)

				# Guarda la anomalía actual seleccionada
				anomalie_actual = anomalie_hover
				# Hace visible el menú
				menu.visible = true
			else:
				# Alterna la visibilidad del menú si no hay anomalía seleccionada
				menu.visible = not menu.visible

# Obtiene el ancho de la ventana
var display_width = ProjectSettings.get("display/window/size/viewport_width")
# Obtiene el alto de la ventana
var display_height = ProjectSettings.get("display/window/size/viewport_height")

func _ready():
	# Oculta el cuadro de confirmación al iniciar
	$CanvasLayer/ConfirmationDialog.visible = false

	# Obtiene todos los nodos del grupo "anomalias"
	var grupoAnomalias = get_tree().get_nodes_in_group("anomalias")
	print(grupoAnomalias)
	
	game_timer.start(60)
	game_timer.timeout.connect(_on_game_timer_timeout)

	# Recorre cada anomalía del grupo
	for a in grupoAnomalias:
		# Conecta la señal para cuando la anomalía quiera aparecer
		a.signal_wanna_spawn.connect(_on_anomaly_wanna_spawn)

		# Obtiene el nodo Area2D de la anomalía
		var area = a.get_node("Area2D")

		# Detecta cuando el mouse entra en el área
		area.mouse_entered.connect(func():
			anomalie_hover = a
		)

		# Detecta cuando el mouse sale del área
		area.mouse_exited.connect(func():
			if anomalie_hover == a:
				anomalie_hover = null
		)

func _on_anomaly_wanna_spawn(anomaly):
	# Indica que se recibió la señal de aparición
	print("LLEGÓ SEÑAL:", anomaly)

	# Obtiene los puntos de aparición permitidos
	var allowedSpawns = anomaly.spawns
	# Lista de puntos disponibles
	var freesSpawns = []

	# Recorre los puntos de aparición
	for sp in allowedSpawns:
		# Verifica que el punto no esté ocupado ni en tiempo de espera
		if sp.ocupado == false && sp.on_waiting_time == false:
			freesSpawns.append(sp)
			
	# Si no hay puntos disponibles o la anomalía ya es visible, termina
	if freesSpawns.size() == 0 || anomaly.visible:
		return
	else:
		# Elige un punto aleatorio disponible
		var spawnPoint = freesSpawns.pick_random()	
		# Coloca la anomalía en la posición del punto
		anomaly.position = spawnPoint.position
		# Guarda el punto actual en la anomalía
		anomaly.current_spawn = spawnPoint
		# Hace visible la anomalía
		anomaly.visible = true
		# Marca el punto como ocupado
		spawnPoint.ocupado = true
		# Asocia la anomalía al punto
		spawnPoint.anomaly_actual = anomaly
		

func validar_reporte(tipo_reportado):
	# Indica qué botón se presionó
	print("SE PRESIONÓ BOTÓN:", tipo_reportado)

	# Verifica que exista una anomalía seleccionada
	if anomalie_actual == null:
		print("No hay anomalía activa")
		return
	
	# Muestra el tipo reportado y el tipo real
	print("Reporte:", tipo_reportado)
	print("Real:", anomalie_actual.type)

	# Verifica si el tipo reportado coincide con el real
	if anomalie_actual.type == tipo_reportado:
		# Oculta la anomalía
		anomalie_actual.visible = false
		# Obtiene el punto donde estaba la anomalía
		var spawn = anomalie_actual.current_spawn
		# Libera el punto de aparición
		spawn.ocupado = false
		spawn.anomaly_actual = null
		# Activa tiempo de espera antes de reutilizar el punto
		spawn.on_waiting_time = true 
		# Inicia un temporizador aleatorio
		spawn.get_node("RandomTimer").start_random()
		
		# Muestra mensaje de acierto
		mostrar_mensaje("Correcto", Color.GREEN)
	else:
		# Muestra mensaje de error
		mostrar_mensaje("Incorrecto", Color.RED)

func mostrar_mensaje(texto, color):
	# Asigna el texto al label
	label_feedback.text = texto
	# Cambia el color del texto
	label_feedback.modulate = color
	
	# Hace visible el mensaje
	label_feedback.visible = true

	# Espera 1 segundo
	await get_tree().create_timer(1.0).timeout

	# Oculta el mensaje después del tiempo
	label_feedback.visible = false

func _on_confirmation_dialog_confirmed() -> void:
	# Cambia a la escena principal del juego
	get_tree().change_scene_to_file("res://game/inside.tscn")
	
@onready var game_timer = $GameTimer


	

func _on_game_timer_timeout():
	get_tree().change_scene_to_file("res://game/finjuego.tscn")
