extends BaseDialogueTestScene


# Called when the node enters the scene tree for the first time.
func _ready():
	var balloon = load("res://dialog/balloon.tscn").instantiate()
	get_tree().current_scene.add_child(balloon)
	balloon.start(resource, title)
