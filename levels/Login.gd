extends Node


func _ready():
	$Windows/Window.popup_centered()


func _on_button_pressed():
	var password = $Windows/Window/Control/CenterContainer/VBoxContainer/HBoxContainer/TextEdit.get_line(0)
	
	if password == "6745":
		get_tree().change_scene_to_file("res://levels/main.tscn")
		
	else:
		$Windows/Window/Control/CenterContainer/VBoxContainer/HBoxContainer/TextEdit.clear()
		
		$Windows/Window/Control/CenterContainer/VBoxContainer/Label.set_text("Password is incorrect!")
		$AudioStreamPlayer.play()
		
		#$Windows/Window/Control/CenterContainer/VBoxContainer/HBoxContainer/Label.set_modulate(Color.RED)
