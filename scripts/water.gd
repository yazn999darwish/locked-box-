extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		var player = get_tree().get_first_node_in_group("player")
		player.lose()
func _physics_process(_delta: float) -> void:
	position.y-=0.5
		
		
		
