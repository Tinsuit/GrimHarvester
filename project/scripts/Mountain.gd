extends "Level.gd"

		
func r_get_borders() -> Dictionary:
	return {"x": Vector2(-1600.0, 2700.0), "y": Vector2(-1200.0, 1400.0)}
		
func r_get_grim() -> Node:
	return $Trees/PlayerGrim
	
func r_get_animal() -> PackedScene:
	return preload("res://scenes/MountainGoat.tscn")


