extends Button

var level = ""


func _on_PLAY_AGAIN_button_up() -> void:
	cal()
	get_tree().change_scene("res://src/level/level"+level+".tscn")

func cal() -> void:
	level += 1
