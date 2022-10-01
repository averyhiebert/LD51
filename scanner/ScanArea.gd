class_name ScanArea

extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.has_method("enter_scan"):
		body.enter_scan()


func _on_Area2D_body_exited(body):
	if body.has_method("exit_scan"):
		body.exit_scan()
