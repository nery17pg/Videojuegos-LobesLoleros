extends CharacterBody2D
@export var speed = 400
@onready var animated_sprite = $AnimatedSprite2D

var inmovilizado = false # Lobelito (el jugador) puede moverse libremente por default
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func get_input():
	var input_dir = Input.get_axis("izquierda","derecha")
	velocity.x = input_dir * speed
	return input_dir
#Movimiento mejorado para añadir colisiones con las paredes invisibles
func _physics_process(delta):
	if not inmovilizado:
		var input = get_input()	
		if input < 0:
			animated_sprite.play("lobo_izquierda")
		elif input > 0:
			animated_sprite.play("lobo_derecha")
		move_and_collide(velocity * delta)
	else:
		return
		
		#La propiedad cambiará a true al iniciar un diálogo con una anomalía de tipo ente o visitante
		#El jugador recobrará el movimiento al terminar el diálogo 
# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
#	velocity = Vector2.ZERO
#	
#	if Input.is_action_pressed("derecha"):
#		animated_sprite.play("lobo_derecha")
#		velocity.x += 1
#		
#	
#	if Input.is_action_pressed("izquierda"):
#		velocity.x -= 1
#		animated_sprite.play("lobo_izquierda")
#		
#	if velocity.length() > 0:
#		velocity = velocity.normalized() * speed
#	
#	position += velocity * delta
