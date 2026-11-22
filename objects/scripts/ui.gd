extends Control

@onready var skep = Globals.skep

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Bg.animation = str(Globals.cur_map)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("title_quit"):
		get_tree().change_scene_to_file("res://scenes/title.tscn")
	
	if Globals.skep.get_lives() == 5:
		$Heart.visible = true
		$Heart2.visible = true
		$Heart3.visible = true
		$Heart4.visible = true
		$Heart5.visible = true
	elif Globals.skep.get_lives() == 4:
		$Heart.visible = true
		$Heart2.visible = true
		$Heart3.visible = true
		$Heart4.visible = true
		$Heart5.visible = false
	elif Globals.skep.get_lives() == 3:
		$Heart.visible = true
		$Heart2.visible = true
		$Heart3.visible = true
		$Heart4.visible = false
		$Heart5.visible = false
	elif Globals.skep.get_lives() == 2:
		$Heart.visible = true
		$Heart2.visible = true
		$Heart3.visible = false
		$Heart4.visible = false
		$Heart5.visible = false
	elif Globals.skep.get_lives() == 1:
		$Heart.visible = true
		$Heart2.visible = false
		$Heart3.visible = false
		$Heart4.visible = false
		$Heart5.visible = false
