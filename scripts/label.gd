extends Label
var check = "checking"
var timee = 25
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	text = str(timee)
	if timee ==-5:
		timee = 25
	if timee <= 0:
		text = str(0)
	
	
	
	
	
	
	


func _on_timer_2_timeout() -> void:
	timee -=1
	
	
	
	
	
	
	
	
	
