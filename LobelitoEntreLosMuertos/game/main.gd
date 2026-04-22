extends Node2D

#El nodo estatua está oculto para que puedan ver la aparición de la anomalía
const LightTexture = preload("res://art/Light.png")
const GRID_SIZE = 350
var anomalies_statue = []



var display_width = ProjectSettings.get("display/window/size/viewport_width")
var display_height = ProjectSettings.get("display/window/size/viewport_height")
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start() # Se inicializa el timer de la escena main (me gustaría cambiarlo más adelante a que cada anomalía tenga su timer o algo así
	# Anomalías de primer nivel
	var anomalie_statue1 = preload("res://anomalies/anomalies_level_1/statue_anomaly_1.tscn").instantiate()
	var anomalie_statue2 = preload("res://anomalies/anomalies_level_1/statue_anomaly_2.tscn").instantiate()
	var anomalie_shadow1 = preload("res://anomalies/anomalies_level_1/shadow_anomaly_1.tscn").instantiate()
	var anomalie_shadow2 = preload("res://anomalies/anomalies_level_1/shadow_anomaly_2.tscn").instantiate()
	var anomalie_lobelito = preload("res://anomalies/anomalies_level_1/lobelito_anomaly.tscn").instantiate()
	# Anomalías de segundo nivel
	var anomalie_tumba1 = preload("res://anomalies/anomalies_level_2/tumba_nombreLobelito.tscn").instantiate()
	var anomalie_door1 = preload("res://anomalies/anomalies_level_2/door_anomaly_1.tscn").instantiate()
	var anomalie_door2 = preload("res://anomalies/anomalies_level_2/door_anomaly_2.tscn").instantiate()
	var anomalie_light = preload("res://anomalies/anomalies_level_2/light_anomaly.tscn").instantiate()
	var anomalie_neblina = preload("res://anomalies/anomalies_level_2/neblina_anomaly.tscn").instantiate()
	var anomalie_ajin_extra = preload("res://anomalies/anomalies_level_2/ajin_anomaly_extra.tscn").instantiate()
	# Anomalías de tercer nivel
	var anomalie_angelique = preload("res://anomalies/anonomalies_level_3/angelique_anomaly_1.tscn").instantiate()
	# Se instancian las anomalías, que por ahora son solo dos
	# Y se añaden al array de anomalías, la idea es que haya varios arrays de anomalías por escenario (los descritos en main)
	# Para aumentar las probabilidades de que ocurra una anomalía se puede agregar varias veces al array
	# En la clase de anomalías se puede consultar las propiedades que contienen cada una de ellas
	anomalies_statue = [anomalie_statue1, anomalie_statue2, anomalie_shadow1, anomalie_shadow2, anomalie_lobelito,
	anomalie_tumba1, anomalie_door1, anomalie_door2, anomalie_light, anomalie_neblina, anomalie_ajin_extra,
	anomalie_angelique]

	

# Cuando se acabe el tiempo del contador se ejecutará lo siguiente
func _on_timer_timeout() -> void:
	var anomalie = anomalies_statue.pick_random() #se agrega una anomalía al azar del array
	anomalie.position = Vector2(-1792.0, 299.0) #Se le asigna una posición (la misma del elemento del entorno que va a reemplazar)
	add_child(anomalie) #Se añade la anomalía a la escena principal
