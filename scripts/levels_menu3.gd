extends Control

func _ready() -> void:
	for i in range($levels.get_child_count()):
		Global.levels.append(i+1)
	for level in $levels.get_children():
		if int(level.name) in range(Global.unlocked+1):
			level.disabled = false
		else:
			level.disabled= true
		
		

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/-2.tscn")
	Global.current = 3
	
func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/1.tscn")
	Global.current = 5
	
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/control.tscn")

func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/-1.tscn")
	Global.current = 4
	
func _on_button_6_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/2.tscn")
	Global.current = 6

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/-3.tscn")
	Global.current = 2
	
func _on__pressed() -> void:
	get_tree().change_scene_to_file("res://sense/-4.tscn")
	Global.current=1
	
func _on__pressed7() -> void:
	get_tree().change_scene_to_file("res://sense/0.tscn")
	Global.current=7
	
func _on__pressed8() -> void:
	get_tree().change_scene_to_file("res://sense/3.tscn")
	Global.current= 8

func _on__pressed10() -> void:
	get_tree().change_scene_to_file("res://sense/5.tscn")
	Global.current= 10
func _on__pressed9() -> void:
	get_tree().change_scene_to_file("res://sense/4.tscn")
	Global.current= 9
func _on__pressednext() -> void:
	get_tree().change_scene_to_file("res://sense/levels_menu.tscn")
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
