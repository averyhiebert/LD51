# Note: requires a child which is a Polygon2D.
#  MUST BE USED AS THE ROOT OF A PACKED SCENE in order for
class_name ScannableBody

extends KinematicBody2D

export var visible_by_default = false
export var is_ghost = false
export var is_hazardous = false
export var can_activate = false
export var exit_to: Resource = null # Scene to exit to when touched by player

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
		#image.color.a = 0.5 # Should be transparent (TODO FADE OUT)
	elif not visible_by_default:
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
	new_node.global_transform = global_transform
	
	# Add to scene as child of ROOT node (solves problems with pathfinding etc.
	get_tree().root.get_child(0).add_child(new_node)
	#get_parent().add_child(new_node)
	
	# Make ghost fade out over 10 seconds
	#  Must happen AFTER ghost enters tree (so new_node.image isn't nil)
	if not new_node.image:
		new_node.queue_free()
		return # Hack to fix edge case when player dies & resets scene, I guess.
	var c = new_node.image.color
	var start_color = Color(c.r,c.g,c.b,1)
	var end_color = Color(c.r,c.g,c.b,0.15)
	var tween = Tween.new()
	tween.playback_process_mode = tween.TWEEN_PROCESS_IDLE
	add_child(tween)
	tween.interpolate_property(new_node.image, "color",
		start_color, end_color, 9, Tween.TRANS_QUART, Tween.EASE_OUT)
	tween.start()
	
	# Delete after 10 seconds
	yield(get_tree().create_timer(9), "timeout")
	new_node.queue_free()

func activate(player):
	# Generic function for activating effects when hit by player
	if exit_to:
		player.skip_physics = true
		print("Level exit reached")
		yield(get_tree().create_timer(1), "timeout")
		get_tree().change_scene_to(exit_to)

func die():
	image.visible = false          # The ship itself should disappear...
	visible = true
	$DeathParticles.visible = true # But the particles need to be visible.
	$DeathParticles.emitting = true
