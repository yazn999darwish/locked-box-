extends RigidBody2D



var l = false
var r = false
var bl = false
var b = false
func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_up"):
		r = false
		l = false
	if Input.is_action_just_pressed("ui_select") and b == true:
		r = true
	if r == true:
		linear_velocity.x = 250
	if Input.is_action_just_pressed("ui_select") and bl == true:
		l = true
	if l == true:
		linear_velocity.x = -250
			
	if Input.is_action_just_released("ui_select"):
		r= false
		l= false
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		b = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		b = false
		r= false
	
	
	
	
	
	
	
	
	
	
	


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		bl = true
		
	
	
	
	
	
	
	
	
	
	


func _on_area_2d_2_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		bl = false
		l = false
	
	
	
	
	
	
	
	
	
