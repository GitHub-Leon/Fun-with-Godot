extends Node

func _ready() -> void:
	var rand = RandomNumberGenerator.new()
	var platformscene = load("res://src//Platform.tscn")
	
	var platform = platformscene.instance()
	rand.randomize()
	var x = rand.randf_range(50,950)
	
	platform.position.x = x
	add_child(platform)
	
	set_process_input(true)

func _input(event):
	if Input.is_action_just_pressed("ui_restart"):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("ui_up"):
		pass
