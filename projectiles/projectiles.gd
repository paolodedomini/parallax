extends Node2D
var laser = preload("res://laser/laser.tscn")
@onready var player = get_parent().get_node('player')

func _on_player_laser_shot():
	var l = laser.instantiate()
	self.add_child(l)
	l.global_position = player.get_node('laserGun').global_position
	
	
	

# Called when the node enters the scene tree for the first time.
func _ready():
	player.connect("laser_shot", _on_player_laser_shot)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	
	pass
