extends Control

func _ready():
	print("Escena de Fin del juego cargada")

func _on_button_pressed():
	get_tree().change_scene_to_file("res://game/menu.tscn")
