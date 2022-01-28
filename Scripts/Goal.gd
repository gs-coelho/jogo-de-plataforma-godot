extends Area2D


func _ready() -> void:
	pass


func _on_goal_body_entered(body: Node) -> void:
	if body.name == "Player":
		$confetti.emmiting = true
