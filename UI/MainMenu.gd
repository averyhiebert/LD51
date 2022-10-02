extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Control/CenterContainer/MainVbox/CenterContainer/ButtonsVbox/Button1.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button1_pressed():
	get_tree().change_scene("res://levels/TutorialLevel.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://UI/instructions.tscn")
