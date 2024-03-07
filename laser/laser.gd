extends Area2D
const SPEED = 1200
signal is_out_screen

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position -= Vector2.LEFT * SPEED * delta
	
#elimina i child che non sono visibili nella scena
func _on_visible_on_screen_notifier_2d_screen_exited():

	is_out_screen.emit()
	queue_free()

	pass
