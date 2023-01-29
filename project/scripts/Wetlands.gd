extends Node2D


var Spirit = preload("res://scenes/Spirit.tscn")
var Animal = preload("res://scenes/WetlandAnimal.tscn")

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
		$Win.hide()

func _on_Animal_grim_touched():
	player_grim.poison()

func _on_Spirit_grim_neared(spirit):
	if player_grim.running == true:
		spirit.run_away(player_grim.position)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Spirit_grim_touched(spirit):
	if spirit.player.frame == 0:
		var a = Animal.instance()
		a.position = spirit.position
		a.connect("grim_touched", self, "_on_Animal_grim_touched")
		call_deferred("add_child", a)
		spirit.queue_free()
		var count_left = $Spirits.get_child_count()
		if count_left == 0:
			$PlayerGrim/AnimatedSprite.play("happy")
			$PlayerGrim/AnimatedSprite.position = $PlayerGrim.happy_pos
			$Win.show()
			$Trees/PlayerGrim.rotation_degrees = 0
			get_tree().paused = true
		else:
			var a_spirit = $Spirits.get_child(0).position
			var arrow_dir = player_grim.get_angle_to(a_spirit)
			add_child($Arrow)
			$Arrow.position = player_grim.position
			$Arrow.look_at(a_spirit)
			$Arrow.play()
			if count_left <= 3:
				for s in $Spirits.get_children():
					spirit.set_readiness(spirit.player.frame - 1)
	else:
		spirit.set_readiness(spirit.player.frame + 1)
	$PlayerGrim/AnimatedSprite.frame = 0
	$PlayerGrim/AnimatedSprite.play()
	$PlayerGrim/AnimatedSprite.position = $PlayerGrim.default_pos
