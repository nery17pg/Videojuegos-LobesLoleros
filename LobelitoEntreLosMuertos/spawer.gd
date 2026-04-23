extends Marker2D
class_name spawner
var ocupado = false
var anomaly_actual = null
var on_waiting_time = true 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Spawner listo:", self)
	#get_node("RandomTimer").start_random()
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_random_timer_timeout() -> void:
	on_waiting_time = false # Replace with function body.
	print("Spawner desbloqueado:", self)
