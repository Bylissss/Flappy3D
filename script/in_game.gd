extends Control

func _ready() -> void:
	$Label/score.text = str(get_parent().score)

func _on_main_scene_score_changed() -> void:
	$Label/score.text = str(get_parent().score)
