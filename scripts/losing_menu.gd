extends Control
func _ready() -> void:
	self.hide()
func _on_button_2_pressed() -> void:
	get_tree().paused = false
	if Global.current>=11:
		get_tree().change_scene_to_file("res://sense/levels_menu.tscn")
	if Global.current<11:
		get_tree().change_scene_to_file("res://sense/levels_menu3.tscn")
func _on_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
func _on_button_3_pressed() -> void:
	get_tree().paused = false
	self.hide()
	var player = get_tree().get_first_node_in_group("player")
	if player:
		player.shaw()
	#get_tree().change_scene_to_file("res://sense/levels_menu.tscn")
	#print("there will be a reward here soon")
	
	
	
	
	
	
	
	
	
	
