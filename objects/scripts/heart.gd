extends Sprite2D

@export var target = Globals.skep
@export var locked_x = 0.0
@export var locked_y = -90.0
@export var ofs = 15
var thing_enabled = true

func notready() -> void:
	if self.name == 'Heart':
		locked_x = 0.0 + ofs
	elif self.name == 'Heart2':
		locked_x = 25.0 - 2.5 + ofs
	elif self.name == 'Heart3':
		locked_x = 50.0 - 5.0 + ofs
	elif self.name == 'Heart4':
		locked_x = 75.0 - 7.5 + ofs
	elif self.name == 'Heart5':
		locked_x = 100.0 - 10 + ofs

# Called every frame. 'delta' is the elapsed time since the previous frame.
func notprocess(delta: float) -> void:
	if thing_enabled:
		# self.global_position.x = locked_x
		self.global_position.y = locked_y
		if target:
			ofs = 15 + target.global_position.x
	else:
		if target:
			if target.global_position.x > 0 + 1152:
				self.global_position.x = target.global_position.x
		else:
			pass # uhhhhhhhhhh
		self.global_position.y = locked_y
