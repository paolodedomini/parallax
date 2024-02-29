extends Node2D
@onready var lasers = $lasers
@onready var player = $player
# Called when the node enters the scene tree for the first time.

func _on_player_laser_shot(laser):
	lasers.add_child(laser)

func _ready():
	player.connect("laser_shot", _on_player_laser_shot)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	$ParallaxBackground2.offset.x -= delta * 70
	$ParallaxBackground.offset.x -= delta * 20
