extends Node2D


var Spirit = preload("res://scenes/Spirit.tscn")

var spirits = []
const TOTAL = 75

var random = RandomNumberGenerator.new()

onready var player_grim = $PlayerGrim

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in TOTAL:
		var s = Spirit.instance()
		s.position = Vector2(random.randi_range(-1600, 2700), random.randi_range(-1200, 1400))
		s.connect("grim_neared", self, "_on_Spirit_grim_neared")
		s.connect("grim_touched", self, "_on_Spirit_grim_touched")
		$Spirits.add_child(s)
		spirits.push_back(s)
		$Win.hide()

func _on_Animal_grim_touched():
	player_grim.poison()

func _on_Spirit_grim_neared(spirit):
	if player_grim.running == true:
		spirit.run_away(player_grim.position)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
