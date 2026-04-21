extends Control

func _ready() -> void:
	pass

func _on_nueva_partida_pressed() -> void:
	get_tree().change_scene_to_file("res://game/main.tscn")

func _on_cargar_partida_pressed() -> void:
	# Por ahora igual que nueva partida, hasta que implementen el guardado
	get_tree().change_scene_to_file("res://game/main.tscn")

func _on_salir_pressed() -> void:
	get_tree().quit()


func _on_button_3_pressed() -> void:
	pass # Replace with function body.
