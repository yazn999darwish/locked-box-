extends Control
func _ready() -> void:
	self.hide()

func _on_button_pressed() -> void:
	get_tree().paused = false
	self.hide()
func _on_button_2_pressed() -> void:
	get_tree().paused= false
	get_tree().reload_current_scene()
	self.hide()
func _on_button_3_pressed() -> void:
	get_tree().paused= false
	if Global.current>=11:
		get_tree().change_scene_to_file("res://sense/levels_menu.tscn")
	if Global.current<11:
		get_tree().change_scene_to_file("res://sense/levels_menu3.tscn")
