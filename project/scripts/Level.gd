extends Node2D

var Animal:PackedScene
var Spirit := preload("res://scenes/Spirit.tscn")

const TOTAL := 75

var random := RandomNumberGenerator.new()

var player_grim:PlayerGrim
var animated_sprite_grim:AnimatedSprite
var borders

onready var arrow := $Arrow
# Called when the node enters the scene tree for the first time.
func _ready():
	player_grim = r_get_grim() as PlayerGrim
	animated_sprite_grim = player_grim.get_node("AnimatedSprite")
	borders = r_get_borders()
	assert(borders.x[0] is float and borders.x[1] is float 
		and borders.y[0] is float and borders.y[1] is float, 
		"Borders not set correctly")
	Animal = r_get_animal()
	for i in TOTAL:
		var s = Spirit.instance()
		s.position = Vector2(
			random.randi_range(borders.x[0], borders.x[1]), 
			random.randi_range(borders.y[0], borders.y[1]))
		s.connect("grim_neared", self, "_on_Spirit_grim_neared")
		s.connect("grim_touched", self, "_on_Spirit_grim_touched")
		$Spirits.add_child(s)
		$Win.hide()
		
func r_get_borders() -> Dictionary:
	return {"x": Vector2(-1600.0, 2700.0), "y": Vector2(-1200.0, 1400.0)}
		
func r_get_grim() -> Node:
	return $PlayerGrim
	
func r_get_animal() -> PackedScene:
	return preload("res://scenes/ForestAnimal.tscn")

func _on_Animal_grim_touched():
	player_grim.poison()

func _on_Spirit_grim_neared(spirit):
	if player_grim.running == true:
		spirit.run_away(player_grim.position)
		
func additional_on_Spirit_grim_touched(spirit:Spirit, a:Node):
	pass

func _on_Spirit_grim_touched(spirit):
	if spirit.player.frame == 0:
		var a = Animal.instance()
		a.position = spirit.position
		a.connect("grim_touched", self, "_on_Animal_grim_touched")
		call_deferred("add_child", a)
		additional_on_Spirit_grim_touched(spirit, a)
		spirit.queue_free()
		var count_left = $Spirits.get_child_count()
		#spirit hasn't been removed yet
		if count_left <= 1:
			animated_sprite_grim.play("happy")
			animated_sprite_grim.position = player_grim.happy_pos
			$Win.show()
			get_tree().paused = true
		else:
			var a_spirit := $Spirits.get_child(0)
			if (a_spirit == spirit):
				a_spirit = $Spirits.get_child(1)
			arrow.position = player_grim.position
			arrow.look_at(a_spirit.position)
			arrow.play()
			if count_left <= 4:
				for s in $Spirits.get_children():
					s.set_readiness(s.player.frame - 1)
	else:
		spirit.set_readiness(spirit.player.frame + 1)
	animated_sprite_grim.frame = 0
	animated_sprite_grim.play()
	animated_sprite_grim.position = player_grim.default_pos
