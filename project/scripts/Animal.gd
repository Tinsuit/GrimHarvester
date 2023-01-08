extends Area2D

onready var player:AnimatedSprite = $AnimatedSprite

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
		player.play("squirrel")
