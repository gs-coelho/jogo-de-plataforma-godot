extends Control

export (int) var minutes = 0
export (int) var seconds = 0

func _process(delta: float) -> void:
	if minutes > 0 and seconds <= 0:
		minutes -= 1
		seconds = 60
	
	$seconds.set_text(":" + String(seconds).pad_zeros(2))
	$minutes.set_text(String(minutes).pad_zeros(2))
	
	if seconds <= 0:
		$Timer.stop()
		yield(get_tree().create_timer(1), "timeout")
		get_tree().reload_current_scene()

func _on_Timer_timeout() -> void:
	seconds -= 1
