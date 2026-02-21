extends Area3D 

@export var has_coin := 0
@export var pipe_speed = 20
var coin_mesh : MeshInstance3D
var coin : Area3D
var game : Node3D

func _ready() -> void:
	has_coin = randi() % 2
	coin_mesh = $coin/MeshInstance3D
	coin = $coin
	game = get_parent().get_parent()
		
	if has_coin == 1:
		coin.show()
	elif has_coin == 0:
		coin.hide() 
		
	translate(Vector3(0,randf_range(5, -5),0))
	
func _physics_process(delta: float) -> void:
	coin_mesh.rotate_y( delta * 5)
	translate(Vector3(-pipe_speed * delta  , 0, 0))


func _on_body_entered(body: Node3D) -> void:
	game.finish()
