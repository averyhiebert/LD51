# Assumes parent is a ScannableBody
class_name EnemyController

extends Node

export var SPEED = 1000

var enemy = null
var target_point = Vector2(300,300) # Start by targeting center of screen

# Called when the node enters the scene tree for the first time.
func _ready():
	enemy = get_parent()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction_to = (target_point - enemy.global_position).normalized()
	enemy.rotation = direction_to.angle()
	enemy.move_and_slide(direction_to * SPEED * delta)

func path_to(position):
	target_point = position


func _on_PlayerController_player_moved(position):
	path_to(position)
