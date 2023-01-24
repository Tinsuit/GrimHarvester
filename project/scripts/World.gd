extends Node2D


var Forest = preload("res://Forest.tscn")
var Wetlands = preload("res://WetlandsV2.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Forest_body_entered(body):
	if body.name == "PlayerGrim":
		var err = get_tree().change_scene_to(Forest)
		if err != OK:
			print(err)



func _on_Wetlands_body_entered(body):
	if body.name == "PlayerGrim":
		var err = get_tree().change_scene_to(Wetlands)
		if err != OK:
			print(err)
