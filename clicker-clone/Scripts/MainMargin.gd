extends MarginContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	var margin_value = 25
	add_theme_constant_override("margin_top", margin_value)
	add_theme_constant_override("margin_left", margin_value)
	add_theme_constant_override("margin_bottom", margin_value)
	add_theme_constant_override("margin_right", margin_value)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
