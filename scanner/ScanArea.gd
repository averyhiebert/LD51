class_name ScanArea

extends Area2D

signal low_beep
signal high_beep


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.has_method("enter_scan"):
		body.enter_scan()
		if body.is_hazardous:
			emit_signal("low_beep")
		else:
			emit_signal("high_beep")


func _on_Area2D_body_exited(body):
	if body.has_method("exit_scan"):
		body.exit_scan()
