extends Button



func _on_HOME_button_up() -> void:
	get_tree().change_scene("res://src/screens/main screen.tscn")
	Playerdata.reset() 
