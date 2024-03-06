extends Node2D

@onready var player = $player
var tester = preload("res://tester/tester.tscn")
var target_hit = 0
# Called when the node enters the scene tree for the first time.
func hit_tester():
	target_hit+=1

func _ready():

	#sottoscrivi il signal "laser_shot" ed esegui la funzione
	for n in 4:
		var t = tester.instantiate()
		t.connect("hit_tester", hit_tester)
		add_child(t)
		
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	$"level-backgrounds/ParallaxBackground2".offset.x -= delta * 70
	$"level-backgrounds/ParallaxBackground".offset.x -= delta * 20
