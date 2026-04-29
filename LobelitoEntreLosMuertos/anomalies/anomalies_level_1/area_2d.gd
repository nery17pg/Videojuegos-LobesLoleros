extends Area2D

# Variable que indica si el mouse está encima del objeto
var mouse_encima = false

func _ready():
	# Conecta la señal cuando el mouse entra al área con la función correspondiente
	mouse_entered.connect(_on_mouse_entered)
	# Conecta la señal cuando el mouse sale del área con la función correspondiente
	mouse_exited.connect(_on_mouse_exited)

func _on_mouse_entered():
	# Se activa cuando el mouse entra al área, cambia el estado a true
	mouse_encima = true

func _on_mouse_exited():
	# Se activa cuando el mouse sale del área, cambia el estado a false
	mouse_encima = false
