extends Actor

const WALK_SPEED = 250
const SPRINT_SPEED = 500
const FRICTION = 100
var velocity = Vector2.ZERO

func _physics_process(delta):
	var inputVector = Vector2.ZERO
	inputVector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	inputVector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	if inputVector != Vector2.ZERO:
		velocity = inputVector.normalized() * delta
	else:
		#velocity = Vector2.ZERO
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		
	if Input.is_action_pressed("ui_sprint"):
		move_and_collide(velocity * SPRINT_SPEED)
	else:
		move_and_collide(velocity * WALK_SPEED)


