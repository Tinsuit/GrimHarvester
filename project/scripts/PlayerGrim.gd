extends KinematicBody2D


export var speed:int = 150
var target
var running = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.frame = 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if target != null:
		var velocity:Vector2 = (target-position).normalized() * speed * (2 if running else 1)
		var collision = move_and_collide(velocity * delta)
		$AnimatedSprite.flip_v = true if velocity.x < 0 else false
		if collision != null || position.distance_to(target) < 4:
			reset()
			
func _unhandled_input(event):
	if event is InputEventScreenDrag:
		target = (global_position - (get_viewport_rect().size / 2)) + event.position
		look_at(target)
	elif event is InputEventScreenTouch:
		target = (global_position - (get_viewport_rect().size / 2)) + event.position
		look_at(target)
		running = true

func reset():
	target = null
	running = false
