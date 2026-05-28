extends Node2D

# Precarga de la textura de luz
const LightTexture = preload("res://art/Light.png")
# Tamaño de la cuadrícula
const GRID_SIZE = 350

# Referencia a la anomalía actualmente seleccionada
var anomalie_actual = null
#para el parpadeo
var anomalia_parpadeo_activa = null
#Para apagado
var anomalia_apagado_activa = null
var apagado_resuelto = false
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
				
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_F:

			# Si hay anomalía de parpadeo activa
			if anomalia_parpadeo_activa != null:
				await hacer_parpadeo_linterna()
				remover_anomalia_parpadeo()
			
			#Apagado
			var luz = $Luz

		# Si la luz quedó apagada y existe anomalía apagado
			if luz.visible == false and anomalia_apagado_activa != null:
				apagado_resuelto = true
	
				resolver_anomalia_apagado()
	
				GameManager.mostrar_mensaje_apagado = true
		

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
	
	
	# game_timer.timeout.connect(_on_game_timer_timeout)

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
		
#Obtiene los dialogos de las anomalías
var dialogos_ente1 = [ #Estos son los dialogos del ente "Niña", se obtienen y se guardan en un array para seleccionar uno de forma aleatoria posteeriormente
	preload("res://dialogue/entes/ente1_little_girl/ente1_dialogue1.dialogue"),
	preload("res://dialogue/entes/ente1_little_girl/ente1_dialogue2.dialogue"),
	preload("res://dialogue/entes/ente1_little_girl/ente1_dialogue3.dialogue")
]

var dialogos_ente2 = [
	preload("res://dialogue/entes/ente2_ghoul/ente2_dialogue1.dialogue"),
	preload("res://dialogue/entes/ente2_ghoul/ente2_dialogue2.dialogue"),
	preload("res://dialogue/entes/ente2_ghoul/ente2_dialogue3.dialogue"),
	preload("res://dialogue/entes/ente2_ghoul/ente2_dialogue4.dialogue")
]

var dialogos_ente3 = [
	preload("res://dialogue/entes/ente3_oni/ente3_dialogue1.dialogue"),
	preload("res://dialogue/entes/ente3_oni/ente3_dialogue2.dialogue"),
	preload("res://dialogue/entes/ente3_oni/ente3_dialogue3.dialogue")
]

var dialogos_vis1 = [
	preload("res://dialogue/visitantes/visitante1_old_man/visit1_dialogue1.dialogue"),
	preload("res://dialogue/visitantes/visitante1_old_man/visit1_dialogue2.dialogue"),
	preload("res://dialogue/visitantes/visitante1_old_man/visit1_dialogue3.dialogue")
]

var dialogos_vis2 = [
	preload("res://dialogue/visitantes/visitante2_strange_man/visit2_dialogue1.dialogue"),
	preload("res://dialogue/visitantes/visitante2_strange_man/visit2_dialogue2.dialogue"),
	preload("res://dialogue/visitantes/visitante2_strange_man/visit2_dialogue3.dialogue"),
	preload("res://dialogue/visitantes/visitante2_strange_man/visit2_dialogue4.dialogue")
]

var dialogos_vis3 = [
	preload("res://dialogue/visitantes/visitante3_woman/visit3_dialogue1.dialogue"),
	preload("res://dialogue/visitantes/visitante3_woman/visit3_dialogue2.dialogue"),
	preload("res://dialogue/visitantes/visitante3_woman/visit3_dialogue3.dialogue")
]

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
		# Si la anomalía reemplaza a un objeto existente lo oculta
		if spawnPoint.will_change and spawnPoint.original_object:
			spawnPoint.original_object.visible = false
		# Coloca la anomalía en la posición del punto
		anomaly.position = spawnPoint.position
		# Guarda el punto actual en la anomalía
		anomaly.current_spawn = spawnPoint
		# Hace visible la anomalía
		anomaly.visible = true
		#Parpadeo
		if anomaly.type == "parpadeo":
			anomalia_parpadeo_activa = anomaly
		#apagado
		if anomaly.type == "apagado":
			anomalia_apagado_activa = anomaly
			apagado_resuelto = false
			
		
		
		var audio = anomaly.get_node_or_null("AudioStreamPlayer2D")
		if audio:
			audio.play()
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
		menu.visible = false
		if anomalie_actual.type == "ente" || anomalie_actual.type == "visitante":
			#El sprite de lobelito se oculta y el jugador no podrá moverse en lo que dura el diálogo
			$lobelito.visible = false
			$lobelito.inmovilizado = true
			#Se obtiene la cámara, que es un nodo hijo de "lobelito"
			var camara = get_viewport().get_camera_2d()
				
			#Se cambia la posicion de la anomalía por el centro de la camara
			anomalie_actual.global_position = camara.get_screen_center_position()
				#Se agranda el sprite para que parezca que el jugador está hablando frente a frente
				
			anomalie_actual.z_index = 999
			if anomalie_actual.identity == "little_girl":
				anomalie_actual.scale = Vector2(3, 3)
			else: 
				anomalie_actual.scale = Vector2(2, 2)
				
			var dialogo	
			match anomalie_actual.identity:
				"little_girl": 
					#Se selecciona un dialogo aleatorio
					dialogo = dialogos_ente1.pick_random()
				"ghoul":
					dialogo = dialogos_ente2.pick_random()
					
				"oni":
					dialogo = dialogos_ente3.pick_random()
					
				"old_man":
					dialogo = dialogos_vis1.pick_random()
					
				"strange_man":
					dialogo = dialogos_vis2.pick_random()
					
				"woman":
					dialogo = dialogos_vis3.pick_random()
				_:
					print("No hace nada xd")
					#Por el momento está roto, ocasiona problemas ya que no le he dado una identidad a cada anomalía
					
			DialogueManager.show_dialogue_balloon(dialogo)
			await DialogueManager.dialogue_ended
			if !is_inside_tree():
				return
			#Se regresan las propiedades de la anomalía a la normalidad		
			
			anomalie_actual.global_position = Vector2.ZERO
			anomalie_actual.scale = Vector2.ONE
			anomalie_actual.z_index = 0
		
		
			
		# Oculta la anomalía
		anomalie_actual.visible = false
		
		# Obtiene el punto donde estaba la anomalía
		var spawn = anomalie_actual.current_spawn
		if spawn.will_change and spawn.original_object:
				spawn.original_object.visible = true
		
		# Libera el punto de aparición
		spawn.ocupado = false
		spawn.anomaly_actual = null
		# Activa tiempo de espera antes de reutilizar el punto
		spawn.on_waiting_time = true 
		# Inicia un temporizador aleatorio
		if spawn and spawn.is_inside_tree():
			spawn.get_node("RandomTimer").start_random()
		
		#Lobelito vuelve a ser visible y el jugador puede volver a moverse
		$lobelito.visible = true
		$lobelito.inmovilizado = false
		
		# Muestra mensaje de acierto
		mostrar_mensaje("Correcto", Color.GREEN)
	else:
		# Muestra mensaje de error
		mostrar_mensaje("Incorrecto", Color.RED)
		#Se da como argumento el daño que ocasiona la anomalía específica
		GameManager.perder_vida(anomalie_actual.damage) # Nery agregó esto

func mostrar_mensaje(texto, color):
	
	if !is_inside_tree():
		return
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
	#guardar
	GameManager.guardar_partida()
	#apagado
	if apagado_resuelto:
		
		GameManager.set_meta("mostrar_mensaje_apagado", true)
	# Cambia a la escena principal del juego
	get_tree().change_scene_to_file("res://game/inside.tscn")
	
#Parpadeo
func hacer_parpadeo_linterna():

	var luz = $Luz

	for i in range(8):

		luz.visible = false
		await get_tree().create_timer(randf_range(0.05, 0.15)).timeout

		luz.visible = true
		await get_tree().create_timer(randf_range(0.05, 0.15)).timeout

	luz.visible = true

func remover_anomalia_parpadeo():

	if anomalia_parpadeo_activa == null:
		return

	# Oculta anomalía
	anomalia_parpadeo_activa.visible = false

	# Obtiene spawn
	var spawn = anomalia_parpadeo_activa.current_spawn

	# Restaura objeto original si reemplazaba algo
	if spawn.will_change and spawn.original_object:
		spawn.original_object.visible = true

	# Libera spawn
	spawn.ocupado = false
	spawn.anomaly_actual = null
	spawn.on_waiting_time = true

	# Reinicia timer
	if spawn and spawn.is_inside_tree():
		spawn.get_node("RandomTimer").start_random()

	# Limpia referencia
	anomalia_parpadeo_activa = null

	mostrar_mensaje("Parpadeo resuelto", Color.GREEN)
	
#apagado
func resolver_anomalia_apagado():

	if anomalia_apagado_activa == null:
		return

	# Oculta anomalía
	anomalia_apagado_activa.visible = false

	var spawn = anomalia_apagado_activa.current_spawn

	# Restaura objeto original
	if spawn.will_change and spawn.original_object:
		spawn.original_object.visible = true

	# Libera spawn
	spawn.ocupado = false
	spawn.anomaly_actual = null
	spawn.on_waiting_time = true

	# Reinicia timer
	if spawn and spawn.is_inside_tree():
		spawn.get_node("RandomTimer").start_random()

	anomalia_apagado_activa = null


#@onready var game_timer = $GameTimer

#func _process(delta):
#	GameManager.tiempo_restante = $GameTimer.time_left
	

#func _on_game_timer_timeout():
#	get_tree().change_scene_to_file("res://game/finjuego.tscn")

# Estructura de anomalías por partes
# Enlaces de anomalías a acciones
