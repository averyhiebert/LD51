extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var level_name = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer2/Label.text = level_name


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
