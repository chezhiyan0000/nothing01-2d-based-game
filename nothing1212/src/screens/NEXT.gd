extends Button


func _on_NEXT_button_up() -> void:
	get_tree().change_scene("res://src/level/level"+str(int(get_tree().current_scene.filename[-6])+1)+".tscn")
