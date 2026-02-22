extends Area3D

var game : Node3D

func _ready() -> void:
	game = get_parent().get_parent()

func _on_body_entered(_body: Node3D) -> void:
	game.finish()
