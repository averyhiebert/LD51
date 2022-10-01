# Note: requires a child which is a Polygon2D
class_name ScannableBody

extends KinematicBody2D

export var is_ghost = false

signal died

var dot_scene = null # Slightly hacky since preload doesn't want to work, apparently?

var image = null # The child representing the visual representation of this kinematic body
						# (So a sprite, basically, although actually a Polygon2D in this case)

# Called when the node enters the scene tree for the first time.
func _ready():
	dot_scene = load("res://dots/Dot.tscn")
	
	# Check for necessary children:
	for N in get_children():
		if N is Polygon2D:
			image = N
			break
	assert(image != null,"Error: Scannable object with no image child")
	
	if is_ghost:
		image.color.a = 0.5

func _processs():
	pass

func enter_scan():
	if is_ghost:
		# Ghosts must be removed once scanned.
		# queue_free()
		pass
	else:
		visible = true

func exit_scan():
	if not is_ghost:
		visible = false
		create_ghost()

func create_ghost():
	# Create a non-moving duplicate of self
	# TODO Fade out slowly over 10 seconds.
	var new_dot = dot_scene.instance()
	
	# New dot must be in ghost-mode, not fully-moving mode.
	new_dot.is_ghost = true
	# Give all the same properties as self
	new_dot.transform = transform
	
	# TODO Make it fade out and die after 10 seconds.
	
	# Add to scene.
	get_parent().add_child(new_dot)

func die():
	emit_signal("died")
