extends Node2D

var Animal = preload("res://Animal.tscn")
var Spirit = preload("res://Spirit.tscn")

var spirits = []
const TOTAL = 25

var random = RandomNumberGenerator.new()

onready var player_grim = $Trees/PlayerGrim

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in TOTAL:
		var s = Spirit.instance()
		s.position = Vector2(random.randi_range(-1500, 1900), random.randi_range(-1500, 1900))
		s.connect("grim_neared", self, "_on_Spirit_grim_neared")
		s.connect("grim_touched", self, "_on_Spirit_grim_touched")
		$Spirits.add_child(s)
		spirits.push_back(s)

func _on_Animal_grim_touched():
	player_grim.poison()

func _on_Spirit_grim_neared(spirit):
	if player_grim.running == true:
		spirit.run_away(player_grim.position)

func _on_Spirit_grim_touched(spirit):
	if spirit.player.frame == 0:
		var a = Animal.instance()
		a.position = spirit.position
		a.connect("grim_touched", self, "_on_Animal_grim_touched")
		call_deferred("add_child", a)
		spirits.erase(spirit)
		spirit.queue_free()
	else:
		spirit.set_readiness(spirit.player.frame + 1)
	$Trees/PlayerGrim/AnimatedSprite.frame = 0
	$Trees/PlayerGrim/AnimatedSprite.play()
