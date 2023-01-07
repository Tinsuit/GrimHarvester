extends KinematicBody2D

export var speed = 210
var dir

signal grim_entered

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dir != null:
		move_and_slide(dir * speed)
		



func _on_Area2D_body_entered(body: Node):
	if body.name == "PlayerGrim":
		emit_signal("grim_entered")
		


func _on_Run_timeout():
	dir = null
