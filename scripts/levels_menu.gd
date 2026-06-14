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
	get_tree().change_scene_to_file("res://sense/8.tscn")
	Global.current = 13
	
func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/10.tscn")
	Global.current = 15
	
func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/control.tscn")

func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/9.tscn")
	Global.current = 14
	
func _on_button_6_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/16.tscn")
	Global.current = 16

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://sense/7.tscn")
	Global.current = 12
	
func _on__pressed() -> void:
	get_tree().change_scene_to_file("res://sense/6.tscn")
	Global.current=11
	
func _on__pressed7() -> void:
	get_tree().change_scene_to_file("res://sense/17.tscn")
	Global.current=17
	
func _on__pressed8() -> void:
	get_tree().change_scene_to_file("res://sense/18.tscn")
	Global.current= 18

func _on__pressed10() -> void:
	get_tree().change_scene_to_file("res://sense/20.tscn")
	Global.current= 20
func _on__pressed9() -> void:
	get_tree().change_scene_to_file("res://sense/19.tscn")
	Global.current= 19
func _on__pressednext() -> void:
	get_tree().change_scene_to_file("res://sense/levels_menu2.tscn")
	
	
	
	
	
	
	

func _on__pressedback() -> void:
	get_tree().change_scene_to_file("res://sense/levels_menu3.tscn")
