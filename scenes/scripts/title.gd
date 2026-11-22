extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("title_begin"):
		get_tree().change_scene_to_file("res://maps/map_1.tscn")
	elif Input.is_action_just_pressed("title_options"):
		# doesnt exist yet!
		# get_tree().change_scene_to_file("res://scenes/options.tscn")
		pass
	elif Input.is_action_just_pressed("title_quit"):
		get_tree().quit()
