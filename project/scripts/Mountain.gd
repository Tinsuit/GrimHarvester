extends Node2D

var Animal = preload("res://scenes/MountainGoat.tscn")
var Spirit = preload("res://scenes/Spirit.tscn")

const TOTAL = 75

var random = RandomNumberGenerator.new()

onready var player_grim := $Trees/PlayerGrim as PlayerGrim

onready var arrow = $Arrow
# Called when the node enters the scene tree for the first time.
func _ready():
	remove_child(arrow)
	for i in TOTAL:
		var s = Spirit.instance()
		s.position = Vector2(random.randi_range(-1600, 2700), random.randi_range(-1200, 1400))
		s.connect("grim_neared", self, "_on_Spirit_grim_neared")
		s.connect("grim_touched", self, "_on_Spirit_grim_touched")
		$Spirits.add_child(s)
		$Win.hide()

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
		spirit.queue_free()
		var count_left = $Spirits.get_child_count()-1
		if count_left == 0:
			$Trees/PlayerGrim/AnimatedSprite.play("happy")
			$Trees/PlayerGrim/AnimatedSprite.position = player_grim.happy_pos
			$Win.show()
			get_tree().paused = true
		else:
			var a_spirit := $Spirits.get_child(0)
			if (a_spirit == spirit):
				a_spirit = $Spirits.get_child(1)
			if !arrow.get_parent():
				add_child(arrow)
			arrow.position = player_grim.position
			arrow.look_at(a_spirit.position)
			arrow.play()
			if count_left <= 5:
				for s in $Spirits.get_children():
					s.set_readiness(s.player.frame - 1)
	else:
		spirit.set_readiness(spirit.player.frame + 1)
	$Trees/PlayerGrim/AnimatedSprite.frame = 0
	$Trees/PlayerGrim/AnimatedSprite.play()
	$Trees/PlayerGrim/AnimatedSprite.position = player_grim.default_pos