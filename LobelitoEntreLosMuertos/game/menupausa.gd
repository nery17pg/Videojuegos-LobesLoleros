extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().paused = not get_tree().paused
		$PausaLayer.visible = not $PausaLayer.visible


func _on_continuar_pressed() -> void:
	get_tree().paused = not get_tree().paused
	$PausaLayer.visible = not $PausaLayer.visible


func _on_salir_pressed():
	GameManager.guardar_partida()
	get_tree().change_scene_to_file("res://game/menu.tscn")
