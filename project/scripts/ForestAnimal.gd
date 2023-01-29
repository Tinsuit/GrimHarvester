extends Area2D


class_name ForestAnimal, "res://textures/squirrel3x.png"

onready var player:AnimatedSprite = $AnimatedSprite

const SQUIRRELS = "squirrels"
const BEARS = "bears"

var dir

var directions = {
	"Up": Vector2(0, -1),
	"Down": Vector2(0, 1),
	"Left": Vector2(-1, 0),
	"Right": Vector2(1, 0)
}

signal grim_touched

# Called when the node enters the scene tree for the first time.
func _ready():
	player.play("leaving")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if is_squirrel():
		if dir != null:
			run(300 * delta)
		else:
			if randf() < 0.7:
				dir = Vector2(0,0)
				player.animation = "squirrel"
			else:
				dir = directions.values()[randi() % directions.size()]
				player.animation = "squirrel_run"
			$Run.wait_time = randf() + 0.8
			$Run.start()
	
	elif player.animation == "bear":
		if dir != null:
			run(100 * delta)
		else:
			dir = directions.values()[randi() % directions.size()]
			$Run.wait_time = randf() + 0.8
			$Run.start()
	
	if dir == directions.Left:
		player.flip_h = false
	elif dir == directions.Right:
		player.flip_h = true

func run(speed:int):
		translate(dir * speed)
		position.x = clamp(position.x, -1500, 2600)
		position.y = clamp(position.y, -1100, 1300)
		
func is_squirrel() -> bool:
	return player.animation == "squirrel" || player.animation == "squirrel_run"

func _on_AnimatedSprite_animation_finished():
	if player.animation == "leaving":
		player.play("sparkling")
	elif player.animation == "sparkling":
		if randf() > 0.5:
			player.play("squirrel")
			add_to_group(SQUIRRELS)
		else:
			player.play("bear")
			add_to_group(BEARS)

func is_animal() -> bool:
	return is_squirrel() ||  player.animation == "bear"

func _on_Run_timeout():
	dir = null


func _on_ForestAnimal_body_entered(body: Node):
	if body.name == "PlayerGrim" && is_animal():
		emit_signal("grim_touched")
