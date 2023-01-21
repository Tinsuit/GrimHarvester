extends Area2D

export var speed = 40
var dir
var running = false

signal grim_neared(spirit)
signal grim_touched(spirit)

onready var player = $AnimatedSprite

var random = RandomNumberGenerator.new()

var directions = {
	"Up": Vector2(0, -1),
	"Down": Vector2(0, 1),
	"Left": Vector2(-1, 0),
	"Right": Vector2(1, 0)
}

# Called when the node enters the scene tree for the first time.
func _ready():
	random.randomize()
	$AnimatedSprite.animation = "Legs" if randf() > .5 else "Tails"
	set_readiness(random.randi_range(0, 3))
	if player.frame == 0:
		$Readiness.stop()
		
func set_readiness(i:int):
	player.frame = clamp(i, 0, 3)
	if player.frame == 0:
		$Readiness.stop()
	else:
		$Readiness.start()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dir != null:
		translate(dir * speed * delta * (5 if running else 1))
		position.x = clamp(position.x, -1600, 2700)
		position.y = clamp(position.y, -1200, 1400)
	else:
		if randf() >= 0.3: 
			var areas:Array = get_overlapping_areas()
			if !areas.empty() && areas[0].is_in_group("spirits"):
				var dirs = []
				if areas[0].position.x > position.x:
					dirs.push_back(directions.Right)
				elif areas[0].position.x < position.x:
					dirs.push_back(directions.Left)
				if areas[0].position.y > position.y:
					dirs.push_back(directions.Down)
				elif areas[0].position.y < position.y:
					dirs.push_back(directions.Up)
				dir = dirs[randi() % dirs.size()]
		if dir == null:
			dir = directions.values()[randi() % directions.size()]
			if dir == directions.Left:
				player.flip_h = false
			elif dir == directions.Right:
				player.flip_h = true
		$Run.wait_time = randf() + 0.5
		$Run.start()
		


func _on_Run_timeout():
	dir = null
	running = false
	
func run_away(pos:Vector2):
	dir = (position-pos).normalized()
	$Run.wait_time = randf() + 0.5
	$Run.start()
	running = true


func _on_Aura_Area2D_body_entered(body:Node):
	if body.name == "PlayerGrim":
		emit_signal("grim_neared", self)

func _on_Body_body_entered(body:Node):
	if body.name == "PlayerGrim":
		emit_signal("grim_touched", self)


func _on_Readiness_timeout():
	if get_overlapping_areas().size() > 5:
		set_readiness(player.frame + 1)
	else:
		set_readiness(player.frame - 1)
