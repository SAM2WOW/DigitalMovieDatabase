extends Button

@export var icon_texture : Texture2D
@export var icon_name : String
@export var window : PackedScene


func _ready():
	set_button_icon(icon_texture)
	set_text(icon_name)


func _on_pressed():
	$AudioStreamPlayer.play()
	
	# check if same name already exist
	for i in Global.windowsManager.opened_windows.values():
		if i.window.window_name == icon_name:
			
			i.window.grab_focus()
			i.window.popup()
			
			return
	
	var w = window.instantiate()
	
	Global.windowsManager.add_window(w)
