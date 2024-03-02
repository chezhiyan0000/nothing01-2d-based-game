tool
extends Area2D

onready var anim_player: AnimationPlayer = $AnimationPlayer

func _on_portal_2d_body_entered(body: Node) -> void:
	teleport()

	
	
func teleport() -> void:
	anim_player.play("fade_in")
	yield(anim_player, "animation_finished")
	get_tree().change_scene("res://src/screens/CONG.tscn")
