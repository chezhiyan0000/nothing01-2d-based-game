extends Button




func _on_Retry_button_up() -> void:
	Playerdata.score = 0
	get_tree().change_scene("res://src/level/level0.tscn")
