extends Area2D


func _ready() -> void:
	pass


func _on_checkpoint_body_entered(body: Node) -> void:
	if body.name == "Player":
		body.hit_checkpoint()
		$anim.play("checked")
