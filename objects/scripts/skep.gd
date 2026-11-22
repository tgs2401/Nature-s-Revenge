extends CharacterBody2D


var SPEED = 200.0
const JUMP_VELOCITY = -400.0

@onready var spr = $AnimatedSprite2D

@onready var player_x = 0
@onready var player_y = 0

var lives = 5
var iframes = 0

func _ready() -> void:
	player_x = self.global_position.x
	player_y = self.global_position.y
	Globals.skep = self
	spr.animation = "right"


func _physics_process(delta: float) -> void:
	
	iframes -= 1
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("game_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	if Input.is_action_just_pressed("game_left"):
		spr.animation = "left"
		
	if Input.is_action_just_pressed("game_right"):
		spr.animation = "right"
		
	if Input.is_action_pressed("game_run"):
		SPEED = 350.0
	else:
		SPEED = 200.0

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("game_left", "game_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
func die():
	get_tree().reload_current_scene()
	
func lifeloss(loss = 1):
	if iframes <= 0:
		self.lives -= loss
		iframes = 120
		if self.lives <= 0:
			die()
			
func get_lives():
	return self.lives
