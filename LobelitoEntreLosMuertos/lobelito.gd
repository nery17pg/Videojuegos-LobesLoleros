extends CharacterBody2D
@export var speed = 400
@onready var animated_sprite = $AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("derecha"):
		animated_sprite.play("lobo_derecha")
		velocity.x += 1
		
	
	if Input.is_action_pressed("izquierda"):
		velocity.x -= 1
		animated_sprite.play("lobo_izquierda")
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	position += velocity * delta
