
extends Area2D

var mouse_encima = false

func _ready():
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)

func _on_mouse_entered():
	mouse_encima = true

func _on_mouse_exited():
	mouse_encima = false
