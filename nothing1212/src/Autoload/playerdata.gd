extends Node

signal score_updated
signal kill_updated

var score: = 0 setget set_score
var kill: = 0 setget set_kill

func reset() -> void:
	score = 0
	kill = 0


func set_score(value:int) -> void:
	score = value
	emit_signal("score_updated")
	
func set_kill(value:int) -> void:
	kill = value
	emit_signal("kill_updated")


