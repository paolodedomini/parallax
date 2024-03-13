extends Node2D

@onready var player = $player
var total_shot = 0
var target_hit = 0
@onready var tester = preload("res://tester/tester.tscn")
		
func is_shot_exited():
	total_shot += 1
	
	if total_shot >= 4:
		get_tree().reload_current_scene()

func is_target_hit():
	total_shot += 1
	target_hit += 1

	if total_shot >= 4 && target_hit < 4:
		print('lost')
		get_tree().reload_current_scene()
	if target_hit == 4:
		print('win')
	

func _ready():
	$projectiles.connect("is_laser_exited_screen", is_shot_exited)
	for n in 4:
		var t = tester.instantiate()
		t.connect("hit_tester", is_target_hit)
		add_child(t)
		
		

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):

	$"level-backgrounds/ParallaxBackground2".offset.x -= delta * 50
	$"level-backgrounds/ParallaxBackground".offset.x -= delta * 10
