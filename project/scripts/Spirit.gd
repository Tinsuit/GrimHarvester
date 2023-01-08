extends KinematicBody2D

export var speed = 20
const MIN_TIME = 1
const MAX_TIME = 2
var dir
var running = false

signal grim_neared(spirit)
signal grim_touched(spirit)

var directions = {
	"Up": Vector2(0, -1),
	"Down": Vector2(0, 1),
	"Left": Vector2(-1, 0),
	"Right": Vector2(1, 0)
}

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dir != null:
		move_and_slide(dir * speed * (3 if running else 1))
	else: 
		dir = directions.values()[randi() % directions.size()]
		$Run.wait_time = randf() + 0.5
		$Run.start()
		


func _on_Run_timeout():
	dir = null
	$ColorRect.color = Color.royalblue
	running = false
	
func run_away(pos:Vector2):
	dir = (position-pos).normalized()
	$Run.wait_time = randf() + 0.5
	$Run.start()
	$ColorRect.color = Color.red
	running = true


func _on_Aura_Area2D_body_entered(body:Node):
	if body.name == "PlayerGrim":
		emit_signal("grim_neared", self)

func _on_Body_body_entered(body:Node):
	if body.name == "PlayerGrim":
		emit_signal("grim_touched", self)
	else:
		 print(body.name)
