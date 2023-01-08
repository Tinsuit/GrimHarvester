extends Node2D

var Animal = preload("res://Animal.tscn")
var Spirit = preload("res://Spirit.tscn")

var spirits = []
const TOTAL = 25

var random = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in TOTAL:
		var s = Spirit.instance()
		s.position = Vector2(random.randi_range(0, 2000), random.randi_range(0, 1500))
		s.connect("grim_neared", self, "_on_Spirit_grim_neared")
		s.connect("grim_touched", self, "_on_Spirit_grim_touched")
		$Spirits.add_child(s)
		spirits.push_back(s)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Spirit_grim_entered():
	if $Trees/PlayerGrim.running == true:
		pass

func _on_Spirit_grim_neared(spirit):
	if $Trees/PlayerGrim.running == true:
		spirit.run_away($Trees/PlayerGrim.position)

func _on_Spirit_grim_touched(spirit):
	if spirit.player.frame == 0:
		var a = Animal.instance()
		a.position = spirit.position
		add_child(a)
		spirits.erase(spirit)
		spirit.queue_free()
	else:
		spirit.set_readiness(spirit.player.frame + 1)
	$Trees/PlayerGrim/AnimatedSprite.frame = 0
	$Trees/PlayerGrim/AnimatedSprite.play()
