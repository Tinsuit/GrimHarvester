extends KinematicBody2D


export var speed:int = 50
var target
var running = false
onready var timer = $DoubleTap

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.stop()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if target != null:
		var velocity:Vector2 = (target-position).normalized() * speed * (2 if running else 1)
		var collision = move_and_collide(velocity * delta)
		if collision != null || position.distance_to(target) < 4:
			reset()
			
func _unhandled_input(event):
	if event is InputEventScreenDrag:
		look_at(event.position)
		target = event.position
		timer.stop()
	elif event is InputEventScreenTouch:
		target = event.position
		look_at(target)
		print(timer.time_left)
		if timer.time_left > 0:
			running = true
		else:
			running = false
			timer.start()

func reset():
	target = null
	running = false
