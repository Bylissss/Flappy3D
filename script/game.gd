extends Node3D

signal score_changed

@export var flappy_scene : PackedScene
@export var generator_scene : PackedScene
@export var score : int
var flappy : RigidBody3D
var generator : Node3D

func play():
	flappy = flappy_scene.instantiate()
	add_child(flappy)
	
	generator = generator_scene.instantiate()
	add_child(generator)
	generator.translate(Vector3(23, 0, 0))
	
	$Main.hide()
	$Retry.hide()
	score = 0
	
	$InGame.show()

func finish():
	flappy.queue_free()
	generator.queue_free()
	
	$InGame.hide()
	$Retry.show()

func exit():
	get_tree().quit()

func score_inc(x : int):
	score += x
	score_changed.emit()
