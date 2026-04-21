extends Control

var panel_abierto = false

@onready var panel_reporte = $PanelReporte
@onready var label_resultado = $PanelReporte/VBoxContainer/LabelResultado
@onready var fila_botones = $PanelReporte/VBoxContainer/FilaBotones

func _ready() -> void:
	panel_reporte.visible = false
	label_resultado.visible = false

func _on_btn_reporte_pressed() -> void:
	panel_abierto = !panel_abierto
	panel_reporte.visible = panel_abierto
	label_resultado.visible = false
	_set_botones_activos(true)

func _on_btn_objeto_pressed() -> void:
	_evaluar("Objeto")

func _on_btn_entorno_pressed() -> void:
	_evaluar("Entorno")

func _on_btn_otro_pressed() -> void:
	_evaluar("Otro")

func _evaluar(categoria_elegida: String) -> void:
	_set_botones_activos(false)
	
	var categoria_correcta = get_tree().get_first_node_in_group("anomalias_manager").get_categoria_activa()
	
	if categoria_elegida == categoria_correcta:
		label_resultado.text = "✔ ¡Correcto! Anomalía eliminada."
		label_resultado.add_theme_color_override("font_color", Color.GREEN)
	else:
		label_resultado.text = "✘ Incorrecto. Pierdes una vida."
		label_resultado.add_theme_color_override("font_color", Color.RED)
	
	label_resultado.visible = true
	
	await get_tree().create_timer(2.0).timeout
	panel_reporte.visible = false
	panel_abierto = false

func _on_btn_cancelar_pressed() -> void:
	panel_reporte.visible = false
	panel_abierto = false

func _set_botones_activos(activo: bool) -> void:
	$PanelReporte/VBoxContainer/FilaBotones/BtnObjeto.disabled = !activo
	$PanelReporte/VBoxContainer/FilaBotones/BtnEntorno.disabled = !activo
	$PanelReporte/VBoxContainer/FilaBotones/BtnOtro.disabled = !activo
