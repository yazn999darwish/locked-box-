extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	if Global.current<11:
		get_tree().change_scene_to_file("res://sense/levels_menu3.tscn")
	if Global.current>=11:
		get_tree().change_scene_to_file("res://sense/levels_menu.tscn")
				
	
	

func _on_button_2_pressed() -> void:
	get_tree().quit()
	
func _on_button_3_pressed() -> void:
	if FileAccess.file_exists("user://save.json"):
		DirAccess.remove_absolute("user://save.json")
		Global.unlocked=1
		Global.save_progress()
