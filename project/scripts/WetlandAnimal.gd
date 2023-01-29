extends KinematicBody2D

onready var player:AnimatedSprite = $AnimatedSprite

var dir

var directions = {
	"Up": Vector2(0, -1),
	"Down": Vector2(0, 1),
	"Left": Vector2(-1, 0),
	"Right": Vector2(1, 0)
}

signal grim_touched

var speed

# Called when the node enters the scene tree for the first time.
func _ready():
	player.play("leaving")

func run(speed:int):
		if is_animal():
			var collision:KinematicCollision2D = move_and_collide(dir * speed)
			if collision != null && collision.get_collider().name == "PlayerGrim":
				emit_signal("grim_touched")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player.animation == "duck":
		if dir != null:
			run(speed * delta)
		else:
			dir = directions.values()[randi() % directions.size()]
			$Run.wait_time = randf() + 0.8
			$Run.start()
			if dir == directions.Left:
				player.flip_h = false
			elif dir == directions.Right:
				player.flip_h = true
			
	elif player.animation == "turtle":
		if dir != null:
			run(speed * delta)
		else:
			if randf() < 0.7:
				speed = 50
			else:	
				speed = 300
			dir = directions.values()[randi() % directions.size()]
			$Run.wait_time = randf() + 0.8
			$Run.start()
			player.look_at(to_global(dir))
			$CollisionShape2D.look_at(to_global(dir))
	

func is_animal() -> bool:
	return player.animation == "duck" || player.animation == "turtle" 

func _on_Run_timeout():
	dir = null


func _on_AnimatedSprite_animation_finished():
	if player.animation == "leaving":
		player.play("sparkling")
	elif player.animation == "sparkling":
		
		if randf() > 0.5:
			player.play("duck")
			speed = 100
		else:
			player.play("turtle")
			speed = 300
