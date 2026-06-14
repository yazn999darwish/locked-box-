extends RigidBody2D

# إعدادات الحركة
@export var speed: float = 200.0
var jump_force: float = 344
@onready var ground_ray = $rc
@onready var ground_ray2 = $rc2
var box_count = 0
var area_count = 0
var ja = false
var timeing = 0
var win = true
func _ready():
	ground_ray.collision_mask = 1
	ground_ray2.collision_mask = 1
		# منع الدوران (اختياري)
	gravity_scale = 0.9
	lock_rotation = true  # يمنع اللاعب من السقوط على جنبه
	$animee.play("no plure")
func _physics_process(_delta):
	$anime.play("idle")
	
	if Input.is_action_just_pressed("ui_left"):
		$anime.play("walk")
	if Input.is_action_just_released("ui_left"):
		$anime.play("idle ")
				
		
	if Input.is_action_just_pressed("ui_right"):
		$anime.play("walk")
	if Input.is_action_just_released("ui_right"):
		$anime.play("idle ")
		
		
		
	if timeing == 25 and area_count > box_count:
		win = false
	if timeing == 30 and win == false:
		lose()
	if timeing == 31 and win == true:
		timeing = 0
			
						# التحكم في الحركة الأفقية
	var direction = Input.get_axis("ui_left", "ui_right")
								
									# تطبيق سرعة أفقية (مع الحفاظ على السرعة العمودية)
	linear_velocity.x = direction * speed
	if Input.is_action_just_pressed("ui_up") and ground_ray.is_colliding():
		linear_velocity.y = -jump_force
	if Input.is_action_just_pressed("ui_up") and ground_ray2.is_colliding():
		linear_velocity.y = -jump_force
		$anime.play("jump")

			
																
																# كشف إذا كان على الأرض
func is_on_floor() -> bool:
	var space_state = get_world_2d().direct_space_state
	var query = PhysicsRayQueryParameters2D.create(global_position, global_position + Vector2(0, 10))
	var result = space_state.intersect_ray(query)
	return result.size() > 0 and result.collider != self
	
	
	
	
	
	
	
	
	
	



			
	
	
	
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("bed"):
		jump_force= jump_force *1.8
		
		
	
	
	
	
	
	
	
	


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.is_in_group("bed"):
		jump_force= 340


	

	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
	
	
	


func _on_ray_cast_2d_child_entered_tree(_node: Node) -> void:
	print (1)


func _on_timer_timeout() -> void:
	area_count = box_count
	
	
	
	
	
	
	
	
	
	
	


func _on_timer_2_timeout() -> void:
	timeing += 1
				
	
	
	
	
	
	#if area_count >> box_count:
	
	
	
	
	
	
	
	
	


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("end"):
		if Global.current==Global.unlocked:
			Global.unlocked+=1
			Global.save_progress()
		$"CanvasLayer/win menu".show()
		$win.play()
		get_tree().paused = true
	
	
	
	
	
	
	
	
	


func _on_touch_screen_button_5_pressed() -> void:
	$"CanvasLayer/pausing menu".show()
	get_tree(). paused= true
func _on_area_2d_3_body_entered(body: Node2D) -> void:
	if not body.is_in_group("box"):
		$audio.pitch_scale = randi()% 1 + 1.5
		$audio.play()
func lose():
	$"CanvasLayer/losing menu".show()
	$"CanvasLayer/TouchScreenButton5".hide()
	get_tree().paused = true
	win = true 
		
func shaw():
	$"CanvasLayer/TouchScreenButton5".show()
	
func _on_touch_screen_button_6_pressed() -> void:
	Engine.time_scale= 3
	$animee.play("plure")

func _on_touch_screen_button_6_released() -> void:
	Engine.time_scale= 1
	$animee.play("no plure")
	
