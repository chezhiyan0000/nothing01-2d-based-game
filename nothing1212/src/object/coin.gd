extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")
export var score: = 50

func _on_body_entered(body: Node) -> void:
	anim_player.play("fade_out")
	Playerdata.score += score
