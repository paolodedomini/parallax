extends Node2D
@onready var projectiles = $projectiles
@onready var player = $player
var tester = preload("res://tester/tester.tscn")
var target_hit = 0
# Called when the node enters the scene tree for the first time.
func hit_tester():
	target_hit+=1
	
func _on_player_laser_shot(laser):
	print(laser)
	projectiles.add_child(laser)
	

func _ready():
	#sottoscrivi il signal "laser_shot" ed esegui la funzione
	player.connect("laser_shot", _on_player_laser_shot)
	for n in 4:
		var t = tester.instantiate()
		add_child(t)
		t.connect("hit_tester", hit_tester)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	$"level-backgrounds/ParallaxBackground2".offset.x -= delta * 70
	$"level-backgrounds/ParallaxBackground".offset.x -= delta * 20
