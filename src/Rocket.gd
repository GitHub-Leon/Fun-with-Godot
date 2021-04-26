extends RigidBody2D

export var speed:= Vector2(300.0, 1000.0)
export var gravity:= 100.0
var velocity:= Vector2.ZERO #speed of rocket


func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
