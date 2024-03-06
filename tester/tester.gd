extends Area2D


signal hit_tester
# Called when the node enters the scene tree for the first time.
func _ready():
	
	var screenSize = get_viewport().size
	var rng = RandomNumberGenerator.new()
	var rndX = rng.randi_range(screenSize.x / 2, screenSize.x - 200)
	var rndY = rng.randi_range(100, screenSize.y - 100)
	position= Vector2(rndX, rndY)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area): 

	if(area.is_in_group("projectile") ):
		# per le collisioni utilizzare i GRUPPI!!! con is_in_group
		# elimina tutti i singoli laser presenti nella scena che collidono con il target
		for i in area.get_parent().get_children():
			i.queue_free()
		hit_tester.emit()
	
