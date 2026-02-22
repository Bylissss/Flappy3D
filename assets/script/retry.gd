extends Control

var game : Node3D

func _ready() -> void:
	$Label/Label/score.text = str(get_parent().score)
	game = get_parent()

func _on_main_scene_score_changed() -> void:
	$Label/Label/score.text = str(get_parent().score)

func _on_exit_pressed() -> void:
	game.get_node("AudioStreamPlayer3D2").play()
	await game.get_node("AudioStreamPlayer3D2").finished
	game.exit()

func _on_retry_pressed() -> void:
	game.get_node("AudioStreamPlayer3D2").play()
	game.play()
