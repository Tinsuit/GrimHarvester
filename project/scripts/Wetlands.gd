extends "Level.gd"


func r_get_grim() -> Node:
	return $PlayerGrim

func additional_on_Spirit_grim_touched(spirit:Spirit, a:Node):
	a.lost_at_land = spirit.is_on_land()

func r_get_animal() -> PackedScene:
	return preload("res://scenes/WetlandAnimal.tscn")
