extends Area2D

var current_box:RigidBody2D=null
var used=false
var boxes_inside=[]
func _ready()->void:
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)
func _on_body_entered(body:Node2D)->void:
		if body.is_in_group("box"):
			boxes_inside.append(body)
			if not used:
				current_box=body
				col()
				$check.play("default")
func _on_body_exited(body:Node2D)->void:
	if body.is_in_group("box"):
		boxes_inside.erase(body)
		if body==current_box and used:
			if boxes_inside.size()>0:
				current_box=boxes_inside[0]
			else:
					current_box=null
					uncoll()
					$check.play("empty")
func coll():
	used=true
func col():
	used=true
	var player=get_tree().get_first_node_in_group("player")
	if player:
		player.box_count+=1
func uncoll():
			used=false
			var player=get_tree().get_first_node_in_group("player")
			if player:
				player.box_count-=1
