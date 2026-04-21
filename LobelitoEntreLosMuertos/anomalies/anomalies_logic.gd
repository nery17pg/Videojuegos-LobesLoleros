extends Node2D
class_name anomalies

# Called when the node enters the scene tree for the first time.

@export var level : int #Nivel de anomalía, mientras más alto el nivel más tardará la anomalía en presentarse y más vidas quitará
@export var type : String #El tipo de anomalía (Cambio de posicion, ente, etc)
@export var damage : int 
@export var should_be_reported : bool #Esto tiene que ver con el sistema de reglas


func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
