extends Control

var current = 0
var levels = []
var unlocked = 1
func _ready():
	load_progress()
func save_progress():
	var data={"unlocked":unlocked}
	var file=FileAccess.open("user://save.json",FileAccess.WRITE)
	file.store_string(JSON.stringify(data))
func load_progress():
	if FileAccess.file_exists("user://save.json"):
		var file=FileAccess.open("user://save.json",FileAccess.READ)
		var data=JSON.parse_string(file.get_as_text())
		if data:
			unlocked=data["unlocked"]
																			
																			
																			
																			
																			
																			
																			
																			
																			
																			
																			
