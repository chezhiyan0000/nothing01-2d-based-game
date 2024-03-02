tool
extends Area2D


onready var anim_player: AnimationPlayer = $AnimationPlayer

var next_level

func _on_potal_body_entered(body: Node) -> void:
	teleport()

func _get_configuration_warning() -> String:
	return "The next scene property can't be empty" if not next_level else ""
	
func teleport() -> void:
	anim_player.play("fade_in")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to()
