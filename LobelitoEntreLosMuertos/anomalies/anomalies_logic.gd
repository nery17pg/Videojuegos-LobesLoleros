extends Node2D
class_name anomalies

# Called when the node enters the scene tree for the first time.

@export var level : int #Nivel de anomalía, mientras más alto el nivel más tardará la anomalía en presentarse y más vidas quitará
@export var type : String #El tipo de anomalía (Cambio de posicion, ente, etc)
@export var damage : int 
@export var spawns : Array[spawner]
@export var should_be_reported : bool #Esto tiene que ver con el sistema de reglas

@onready var timer = $RandomTimer

signal signal_wanna_spawn(anomaly)

func _ready() -> void:
	timer.timeout.connect(_on_random_timer_timeout)
	timer.start_random()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_random_timer_timeout() -> void:
	print("TIMER DISPARÓ:", self)
	signal_wanna_spawn.emit(self)
