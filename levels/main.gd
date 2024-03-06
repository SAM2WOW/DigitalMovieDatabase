extends Node

func _ready():
	await get_tree().create_timer(0.5).timeout
	
	$CanvasLayer.show()
	
	await get_tree().create_timer(0.5).timeout
	$Control/Icons.show()
	$Windows/Notepad.show()

func _input(event):
	return
	
	if Input.is_action_just_pressed("ui_end"):
		get_tree().change_scene_to_file("res://levels/crashed.tscn")
