extends Node

var img : Image

func _process(_delta: float) -> void:
	if Input.is_action_pressed("take_screenshot"):
		print("Remember screenshots taken with exported binary stay right next to exectuble !!!")
		img = get_viewport().get_camera_3d().get_viewport().get_texture().get_image()
		OS.execute("mkdir", (["res"]))
		img.save_png("res://res/sh"+ "_" + Time.get_date_string_from_system() + "_" + Time.get_time_string_from_system().replace(":","") + ".png")
