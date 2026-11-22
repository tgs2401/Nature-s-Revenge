extends AnimatedSprite2D

@export var target = Globals.skep
@export var locked_x = 0.0
@export var locked_y = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	# self.global_position.x = locked_x
	self.global_position.y = locked_y
