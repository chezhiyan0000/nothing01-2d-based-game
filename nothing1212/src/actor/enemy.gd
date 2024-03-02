extends "res://src/actor/actor.gd"

export var score: = 100
export var kill: = 1 

func _ready() -> void:
		
	set_physics_process(false)
	_velocity.x = -speed.x

func _on_stomp_body_entered(body: Node) -> void:
	if body.global_position.y > get_node("stomp").global_position.y:
		return
	get_node("CollisionShape2D").disabled = true
	Playerdata.kill += kill
	die()
func _physics_process(delta: float) -> void:
	_velocity.y += gravity * delta
	if is_on_wall():
		_velocity.x *= -1.0
		
		if _velocity.x == -300:
			$AnimatedSprite.play("walk1")
			$AnimatedSprite.flip_h = false
			
		if _velocity.x == 300:
			$AnimatedSprite.play("walk1")
			$AnimatedSprite.flip_h = true
			
		
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
	
func die() ->  void:
	queue_free()
	Playerdata.score += score
	
