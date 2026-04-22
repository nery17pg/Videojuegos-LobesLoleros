extends Panel

@onready var main = $"../../"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_button_3_pressed() -> void:
	pass # Replace with function body.

func _on_objeto_pressed():
	print("CLICK OBJETO") 
	main.validar_reporte("objeto")

func _on_ente_pressed():
	print("CLICK ENTE") 
	main.validar_reporte("ente")

func _on_otro_pressed():
	print("CLICK OTRO") 
	main.validar_reporte("otro")	

func _on_visitante_pressed(): 
	print("CLICK VISITANTE") 
	main.validar_reporte("visitante")


func _on_sombras_pressed():
	print("CLICK SOMBRAS") 
	main.validar_reporte("sombras")
	
func _on_luz_pressed():
	print("CLICK LUZ") 
	main.validar_reporte("luz")

func _on_lobelito_pressed():
	print("CLICK LOBELITO") 
	main.validar_reporte("lobelito")
