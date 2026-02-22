extends Area3D

var game : Node3D 
var coin_snd : AudioStreamPlayer3D

func _ready() -> void:
	game = get_parent().get_parent().get_parent()
	coin_snd = $AudioStreamPlayer3D

func _on_area_entered(_area: Area3D) -> void:
	game.score_inc(1)
	coin_snd.play()
