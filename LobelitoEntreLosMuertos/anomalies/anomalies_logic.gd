extends Node2D
class_name anomalies

# Variable exportada que define el nivel de la anomalía
# A mayor nivel, más tarda en aparecer y mayor daño causa
@export var level : int 

# Tipo de anomalía (por ejemplo: cambio de posición, ente, etc)
@export var type : String 

# Cantidad de daño que provoca la anomalía
@export var damage : int 

# Lista de puntos donde puede aparecer la anomalía
@export var spawns : Array[spawner]

# Punto actual donde está la anomalía
@export var current_spawn : spawner

# Indica si la anomalía debe ser reportada según las reglas del juego
@export var should_be_reported : bool 

# Referencia al temporizador aleatorio
@onready var timer = $RandomTimer

# Señal que se emite cuando la anomalía es clickeada
signal anomalia_clickeada(anomaly)

# Señal que se emite cuando la anomalía quiere aparecer
signal signal_wanna_spawn(anomaly)

func _ready() -> void:
	# Conecta la señal de timeout del temporizador con su función correspondiente
	timer.timeout.connect(_on_random_timer_timeout)
	# Inicia el temporizador con un tiempo aleatorio
	timer.start_random()

# Se ejecuta en cada frame (no se está utilizando actualmente)
func _process(_delta: float) -> void:
	pass

func _on_random_timer_timeout() -> void:
	# Indica que el temporizador se activó
	print("TIMER DISPARÓ:", self)
	print(type)
	# Emite la señal para indicar que la anomalía quiere aparecer
	signal_wanna_spawn.emit(self)
