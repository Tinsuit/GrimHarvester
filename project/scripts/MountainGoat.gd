extends Area2D

onready var player:AnimatedSprite = $AnimatedSprite
var target
const SPEED = 500
signal grim_touched

# Called when the node enters the scene tree for the first time.
func _ready():
	player.play("leaving")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if target != null:
		run(delta)
	elif is_animal():
		var areas = $Search.get_overlapping_areas()
		var positions:Array = []
		for a in areas:
			if a.name.begins_with("Platform") && a.position != position:
				positions.push_back(a.position)
		if positions.empty():
			print("NO PLATFORM FOUND AT " + str(position))
			position = Vector2.ZERO
			return
		else:
			target = positions[randi() % positions.size()]
			player.play("jump")
			
func is_animal() -> bool:
	return player.animation == "default" || player.animation == "jump"

func run(delta:float):
	var new_pos = position.move_toward(target, delta * SPEED)
	if new_pos == position:
		if player.animation == "jump":
			player.play("default")
	else: position = new_pos
		

func _on_MountainGoat_body_entered(body):
	if is_animal():
		if body.name == "PlayerGrim":
			emit_signal("grim_touched")


func _on_Run_timeout():
	target = null
	$Run.wait_time = rand_range(0.0, 4.0)
	$Run.start()


func _on_AnimatedSprite_animation_finished():
	if player.animation == "leaving":
		player.play("sparkling")
	elif player.animation == "sparkling":
		player.play("default")
		$Run.wait_time = randf() + 0.8
		$Run.start()

