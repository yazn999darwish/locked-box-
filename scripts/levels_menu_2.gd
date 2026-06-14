extends Control
func _ready() -> void:
		for i in range($levels.get_child_count()):
			Global.levels.append(i+1)
		for level in $levels.get_children():
			if int(level.name) in range(Global.unlocked+1):
				level.disabled = false
			else:
				level.disabled= true
				
func _on__pressed2() -> void:
	get_tree().change_scene_to_file("res://sense/21.tscn")
	Global.current=22
func _on__presse3d() -> void:
	get_tree().change_scene_to_file("res://sense/22.tscn")
	Global.current=23

func _on__pressed4() -> void:
	get_tree().change_scene_to_file("res://sense/-1.tscn")
	Global.current=24
func _on_back_pressedback() -> void:
	get_tree().change_scene_to_file("res://sense/control.tscn")
	
	
	
	
	
	
	
