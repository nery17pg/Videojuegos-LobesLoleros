extends Node2D

@onready var libreta = $Libreta
@onready var libreta_ui = $CanvasLayer/LibretaUI
@onready var boton_cerrar = $CanvasLayer/LibretaUI/Button
@onready var reloj = $Reloj
@onready var reloj_zoom = $CanvasLayer/RelojZoom
@onready var boton_cerrar_zoom = $CanvasLayer/RelojZoom/Button
@onready var puerta = $Puerta

func _ready() -> void:
	# Ocultamos la libreta al iniciar
	libreta_ui.hide()
	# Reloj
	reloj_zoom.hide()
	reloj_zoom.process_mode = Node.PROCESS_MODE_WHEN_PAUSED
	# Puerta
	puerta.input_event.connect(_on_puerta_click)
	
	# Conectamos señales
	#Libreta
	libreta.input_event.connect(_on_libreta_click)
	boton_cerrar.pressed.connect(_cerrar_libreta)
	# Reloj
	reloj.input_event.connect(_on_reloj_click)
	boton_cerrar_zoom.pressed.connect(_cerrar_reloj_zoom)

# Funciones de libretas
func _on_libreta_click(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			libreta_ui.show()
			get_tree().paused = true

func _cerrar_libreta():
	libreta_ui.hide()
	get_tree().paused = false
	
# Funciones de reloj
func _on_reloj_click(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			reloj_zoom.show()
			get_tree().paused = true

func _cerrar_reloj_zoom():
	reloj_zoom.hide()
	get_tree().paused = false
	
# Funciones puerta
func _on_puerta_click(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			get_tree().paused = false
			get_tree().change_scene_to_file("res://game/main.tscn")
