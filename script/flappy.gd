extends RigidBody3D  

@export var jump := 150000
var game : Node3D
var jump_timer : Timer
var can_jump := true

func _ready() -> void:
	jump_timer = $Timer
	game = get_parent()
	
func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("jump") && can_jump:
		apply_force(Vector3(0, delta * jump, 0))
		can_jump = false
		jump_timer.start()

func _on_timer_timeout() -> void:
	can_jump = true
