extends Node2D

func goToScene():
	
	get_tree().change_scene_to_file("res://level/level.tscn")

# Called when the node enters the scene tree for the first time.


func _ready():
	DialogueManager.show_dialogue_balloon(load("res://dialog/intro.dialogue"), "start")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
