# Note: requires a child which is a Polygon2D.
#  MUST BE USED AS THE ROOT OF A PACKED SCENE in order for
class_name ScannableBody

extends KinematicBody2D

export var is_ghost = false
export var is_hazardous = false

signal died

var self_scene = null # Slightly hacky.

var image = null # The child representing the visual representation of this kinematic body
						# (So a sprite, basically, although actually a Polygon2D in this case)

# Called when the node enters the scene tree for the first time.
func _ready():
	self_scene = load(filename) # Note: this only works if node is root of an instanced scene!
	
	# Check for necessary children:
	for N in get_children():
		if N is Polygon2D:
			image = N
			break
	assert(image != null,"Error: Scannable object with no image child")
	
	if is_ghost:
		collision_layer = 0 # No collide with anything (?)
		image.color.a = 0.5 # Should be transparent (TODO FADE OUT)
	else:
		# Invisible by default
		visible = false

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
	var new_node = self_scene.instance()
	# New dot must be in ghost-mode, not fully-moving mode.
	new_node.is_ghost = true
	
	# Make all modified properties match:
	new_node.transform = transform
	
	# TODO Make it fade out and die after 10 seconds.
	
	# Add to scene.
	get_parent().add_child(new_node)

func die():
	emit_signal("died")