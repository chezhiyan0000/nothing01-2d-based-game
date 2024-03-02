tool
extends Button



func _on_play_button_up() -> void:
	get_tree().change_scene("res://src/level/level0.tscn")
