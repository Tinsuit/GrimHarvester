extends Area2D

onready var player:AnimatedSprite = $AnimatedSprite

const SQUIRRELS = "squirrels"
const BEARS = "bears"

signal grim_touched

# Called when the node enters the scene tree for the first time.
func _ready():
	player.play("leaving")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


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


func _on_Animal_body_entered(body):
	match player.animation:
		"squirrel", "bear":
			emit_signal("grim_touched")
