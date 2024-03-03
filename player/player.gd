extends CharacterBody2D

const MAX_SPEED = 600
const SPEED = 2000.0
const FRICTION = 1300.0
var input = Vector2.ZERO

signal laser_shot()
# Get the gravity from the project settings to be synced with RigidBody nodes.

func get_input():
	input.y = int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up"))
	input.x = int(Input.is_action_pressed("right") )- int(Input.is_action_pressed("left"))
	return input.normalized()
	
func player_movement(delta):
	
	velocity += get_input() 
	
	if input == Vector2.ZERO:
		if velocity.length() > (FRICTION * delta):
			velocity -= velocity.normalized() * (FRICTION*delta)
		else: 
			velocity = Vector2.ZERO
	else:
		velocity += (input * SPEED * delta)
		velocity = velocity.limit_length(MAX_SPEED)
	move_and_slide()
	
	
func _ready():
	position = Vector2(400, 400)
	
func _physics_process(delta):
	if(Input.is_action_just_pressed("fire")):
			emit_signal("laser_shot")
			
			
	player_movement(delta)
