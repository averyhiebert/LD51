# Assumes that parent is a ScannableBody

class_name PlayerController

extends Node

signal player_moved(position)

#const MAX_SPEED = 250 * Engine.iterations_per_second # Not currently used?
const ACCELERATION = 500 * Engine.iterations_per_second
const DAMPING = 0.95

var velocity = Vector2(0,0)
var dying = false
var skip_physics = false

var player = null

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_parent()
	
func handle_key_input(delta):
	var heading = Vector2(0,0)
	
	if dying:
		return heading # No steering while dying.
	
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
	if skip_physics:
		return
	
	var heading = handle_key_input(delta)
	
	velocity = velocity + heading.normalized()*ACCELERATION*delta
	velocity = velocity * DAMPING
	
	player.rotation = velocity.angle()
	player.move_and_slide(velocity*delta,Vector2(0,-1))
	
	if player.get_slide_collision(0) and not dying:
		# Note: we ignore all but the first collision
		#  (Avoids race conditions of exit vs. mine, etc.)
		var collision = player.get_slide_collision(0)
		if collision.collider.is_hazardous:
			player_die()
		if collision.collider.can_activate:
			collision.collider.activate(self)
	
	if player.position.x < 0 or player.position.y < 0 or player.position.x > 600 or player.position.y > 600:
		player_die()
	
	emit_signal("player_moved",player.global_position)

func player_die():
	player.die() # Trigger death particles
	dying = true
	print("Player died")
	yield(get_tree().create_timer(1), "timeout")
	get_tree().reload_current_scene()
