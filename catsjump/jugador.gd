extends CharacterBody2D


const SPEED = 4500
const JUMP_VELOCITY = -1000
var Gravity = 4100
 

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += Gravity * delta

	# Handle jump.
	if Input.is_action_pressed("Salto") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	
	velocity.x = SPEED * delta
	

	move_and_slide()
