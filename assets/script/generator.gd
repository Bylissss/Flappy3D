extends Node3D

var spawn_timer : Timer
var despawn_timer : Timer
var queue : Array

var pipe : Area3D 

@export var pipe_scene : PackedScene


func _ready() -> void:
		
	spawn_timer = $spawn_timer
	spawn_timer.timeout.connect(on_spawn_timeout)
	
	despawn_timer = $despawn_timer
	despawn_timer.timeout.connect(on_despawn_timeout)
	
	spawn()
	
func on_spawn_timeout():
	spawn()

func on_despawn_timeout():
	despawn()
	
func spawn():
	pipe = pipe_scene.instantiate()
	queue.append(pipe)
	add_child(pipe)
	despawn_timer.autostart = true
	despawn_timer.start()

func despawn():
	queue[0].queue_free()
	queue.remove_at(0)
	pass
