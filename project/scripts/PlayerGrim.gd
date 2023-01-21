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
		var effect = 1
		if $Poison.time_left > 0:
			effect = .5
		elif running:
			effect = 2
			
		var velocity:Vector2 = (target-position).normalized() * speed * effect
		var collision = move_and_collide(velocity * delta)
		$AnimatedSprite.flip_v = true if velocity.x < 0 else false
		if collision != null || position.distance_to(target) < 4:
			reset()
			
func _unhandled_input(event:InputEvent):
	if event is InputEventScreenDrag:
		target = (global_position - (get_viewport_rect().size / 2)) + event.position
		look_at(target)
		
	elif event is InputEventScreenTouch:
		print("touch: " + str(event))
		target = (global_position - (get_viewport_rect().size / 2)) + event.position
		look_at(target)
		if event.pressed == true:
			$Touch.start()
			running = false
		else:
			if $Touch.time_left > 0:
				running = true
			else:
				running = false
				$Touch.stop()

func reset():
	target = null
	running = false

func poison():
	$Poison.start()
	$AnimatedSprite.play("hurt")

func _on_Poison_timeout():
	$AnimatedSprite.animation = "default"
	$AnimatedSprite.stop()
	$AnimatedSprite.frame = 2

