extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_one_pressed():
	Manager.camera_zoom = 1


func _on_two_pressed():
	Manager.camera_zoom = 2


func _on_three_pressed():
	Manager.camera_zoom = 3
