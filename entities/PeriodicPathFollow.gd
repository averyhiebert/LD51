class_name PeriodicPathFollow

extends PathFollow2D

export var period = 1 # In seconds


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	set_unit_offset(get_unit_offset() + delta/period)
