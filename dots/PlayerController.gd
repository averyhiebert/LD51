# Should be attached as a child of a kinematic body.
# Allows said kinematic body to be controlled by the player.

class_name PlayerController

extends Node

#const MAX_SPEED = 250 * Engine.iterations_per_second # Not currently used?
const ACCELERATION = 500 * Engine.iterations_per_second
const DAMPING = 0.95

var velocity = Vector2(0,0)

var player = null

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_parent()
	player.connect("died",self,"player_die")
	
func handle_key_input(delta):
	var heading = Vector2(0,0)
	
	if Input.is_action_pressed("ui_left"):
		heading.x = -1
	elif Input.is_action_pressed("ui_right"):
		heading.x = 1
	else:
		heading.x = 0
	
	if Input.is_action_pressed("ui_up"):
		heading.y = -1
	elif Input.is_action_pressed("ui_down"):
		heading.y = 1
	else:
		heading.y = 0
	
	return heading

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var heading = handle_key_input(delta)
	
	velocity = velocity + heading.normalized()*ACCELERATION*delta
	velocity = velocity * DAMPING
	
	# warning-ignore:return_value_discarded
	player.move_and_slide(velocity*delta,Vector2(0,-1))
	player.set_rotation(velocity.angle())

func player_die():
	print("Player died")
