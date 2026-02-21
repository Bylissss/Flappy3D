@tool
extends Node

func  _ready() -> void:
	OS.execute("mkdir", [("dist")])
