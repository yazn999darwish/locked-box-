extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.



var time = 25
func _physics_process(_delta: float) -> void:
	if time >>0:
		play("idle")
	if time <= 0:
		play("open")
	if time <= -5:
		time =25




	
func _on_timer_timeout() -> void:
	time = time-1

	
	
	
	
	
	
	
	
	
		
	
	
	
	
	
	
	
	
	
