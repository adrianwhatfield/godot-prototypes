extends "res://Scripts/hero_base.gd"

func _ready():
	hero_info = preload("res://Resources/click_hero_info.tres")
	if is_active == true:
		level = 1
		activate()
	elif is_active == false:
		level = 0

func _process(delta):
	if is_active == true:
		get_cost()
		get_damage()
		update_vars()
		
		update_ui()
	elif is_active == false:
		current_damage = 0
		
		update_ui()

