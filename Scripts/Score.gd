extends Label


func _process(delta: float) -> void:
	text = String(Global.fruits).pad_zeros(4)
	
