extends Camera2D

@export var target = Globals.skep
@export var locked_y = -110.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if target:
		pass
		# self.global_position.x = target.global_position.x
	# self.global_position.y = locked_y
