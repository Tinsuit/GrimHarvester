extends KinematicBody2D


export var speed:int = 150
var target
var running = false
onready var player:AnimatedSprite = $AnimatedSprite

const default_pos = Vector2(24, 10)
const default_pos_left = Vector2(24, -10)
const hurt_pos = Vector2(-24, -10)
const hurt_pos_right = Vector2(-24, 10)
const happy_pos = Vector2(-16, -12)


# Called when the node enters the scene tree for the first time.
func _ready():
	player.frame = 2

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
		if velocity.x < 0:
			if player.animation == "default":
				player.position = default_pos_left
			elif player.animation == "hurt":
				player.position = hurt_pos
		else:
			if player.animation == "default":
				player.position = default_pos
			elif player.animation == "hurt":
				player.position = hurt_pos_right
			
		player.flip_v = true if velocity.x < 0 else false
		if collision != null || position.distance_to(target) < 4:
			reset()
			
func _unhandled_input(event:InputEvent):
	if event is InputEventScreenDrag:
		target = (global_position - (get_viewport_rect().size / 2)) + event.position
		look_at(target)
		
	elif event is InputEventScreenTouch:
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
	player.play("hurt")
	player.position = hurt_pos

func _on_Poison_timeout():
	player.animation = "default"
	player.position = default_pos
	player.stop()
	player.frame = 2

