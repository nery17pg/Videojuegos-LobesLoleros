extends Control

@onready var main = $"../../"

func _ready() -> void:
	pass

func _on_nueva_partida_pressed() -> void:
	print("---------------Entré a guardar---------------")
	get_tree().change_scene_to_file("res://game/main.tscn")

func _on_cargar_partida_pressed() -> void:
	print("---------------Entré a cargar---------------")
	GameManager.cargar_partida()
	get_tree().change_scene_to_file("res://game/main.tscn")


func _on_salir_pressed() -> void:
	get_tree().quit()
