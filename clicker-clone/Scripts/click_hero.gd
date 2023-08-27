extends "res://Scripts/hero_base.gd"

func _ready():
	hero_info = preload("res://Resources/click_hero_info.tres")
	current_cost = hero_info.base_cost
	if state == hero_state.ACTIVE:
		activate()

func _process(delta):
	if state == hero_state.ACTIVE:
		update_vars()
		get_cost()
		get_damage()
		update_ui()
	
	if state == hero_state.INACTIVE:
		update_ui()

