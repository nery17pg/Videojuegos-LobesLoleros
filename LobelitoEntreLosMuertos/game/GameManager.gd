extends Node

var tiempo_total = 60
var tiempo_restante = 60

var timer := Timer.new()

func _ready():
	add_child(timer)
	timer.wait_time = tiempo_total
	timer.one_shot = true
	timer.start()
	timer.timeout.connect(_on_timeout)

func _process(delta):
	tiempo_restante = timer.time_left

func _on_timeout():
	get_tree().quit()
