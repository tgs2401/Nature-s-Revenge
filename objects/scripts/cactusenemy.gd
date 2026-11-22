extends CharacterBody2D

@onready var skep = Globals.skep

const SPEED = 200.0
var goes_left = true
var frames_til_not_on_wall = 0

var old = false

func _physics_process(delta: float) -> void:
	
	frames_til_not_on_wall -= 1
	
	# Add the gravity.
	if not is_on_floor() and old:
		velocity += get_gravity() * delta
	if goes_left:
		# self.global_position.x -= 0.5
		pass
	else:
		# self.global_position.x += 0.5
		pass
		
	if (is_on_wall() and frames_til_not_on_wall <= 0) or (not is_on_floor() and not old):
		goes_left = not goes_left
		if (not is_on_floor() and not old):
			if goes_left:
				self.global_position.x -= 2
			else:
				self.global_position.x += 2
		else:
			frames_til_not_on_wall = 30

	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == skep:
		skep.lifeloss(2)
