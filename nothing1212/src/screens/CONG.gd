extends Control

onready var score: Label = get_node("Label2")

func _ready() -> void:
	score.text = "%s" %Playerdata.score
