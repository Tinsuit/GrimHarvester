extends "Level.gd"


func r_get_grim():
	return $Trees/PlayerGrim

func _on_Animal_grim_touched():
	player_grim.poison()

func r_get_animal() -> PackedScene:
	return preload("res://scenes/ForestAnimal.tscn")
