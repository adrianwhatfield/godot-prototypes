extends CanvasLayer

signal reset_dungeon

func _on_one_pressed():
	Manager.camera_zoom = 1


func _on_two_pressed():
	Manager.camera_zoom = 2


func _on_three_pressed():
	Manager.camera_zoom = 3

func _on_reset_button_pressed():
	reset_dungeon.emit()
