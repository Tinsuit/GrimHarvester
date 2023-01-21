extends Node2D


var Forest = preload("res://Forest.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Forest_body_entered(body):
	if body.name == "PlayerGrim":
		print("entered")
		get_tree().change_scene_to(Forest)
