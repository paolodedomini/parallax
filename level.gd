extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	$ParallaxBackground2.offset.x -= delta * 70
	$ParallaxBackground.offset.x -= delta * 20
