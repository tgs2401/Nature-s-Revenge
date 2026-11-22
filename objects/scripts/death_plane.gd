extends Area2D

@onready var skep = Globals.skep

func _on_body_entered(body: Node2D) -> void:
	if body == skep:
		skep.die()
