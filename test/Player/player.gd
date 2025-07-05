extends CharacterBody2D
#func _ready():
#	print("Hello world.")
const MAX_SPEED = 200
const ACCELERATION = 12
const friction=40

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x=Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	input_vector.y=Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector*MAX_SPEED,ACCELERATION)
	
	else:
		velocity=velocity.move_toward(Vector2.ZERO,friction)
		
	print(velocity)
	move_and_slide()
