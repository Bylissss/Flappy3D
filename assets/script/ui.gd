extends Control

var play : Button
var exit : Button
var game : Node3D

func _ready() -> void:
	game = get_parent()
	play = $MarginContainer2/HBoxContainer/play
	exit = $MarginContainer2/HBoxContainer/exit
	
	play.pressed.connect(on_play_pressed)
	exit.pressed.connect(on_exit_pressed)
	
func on_play_pressed():
	game.get_node("AudioStreamPlayer3D2").play()
	game.play()
	
func on_exit_pressed():
	game.get_node("AudioStreamPlayer3D2").play()
	await game.get_node("AudioStreamPlayer3D2").finished
	game.exit()
