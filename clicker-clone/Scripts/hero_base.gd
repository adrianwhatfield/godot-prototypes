extends Control

# Nodes
@onready var cost_label = $HBoxContainer/LevelUpContainer/CostLabel
@onready var name_label = $HBoxContainer/InfoContainer/NameLabel
@onready var hero_icon = $HBoxContainer/HeroIcon
@onready var dps_label = $HBoxContainer/InfoContainer/DPSLevelContainer/DPSLabel
@onready var lvl_label = $HBoxContainer/InfoContainer/DPSLevelContainer/LvlLabel

# Info
var hero_info: Hero
@export var is_active: bool = false

# Stats: lvl, cost, dmg
var level: int = 0
var base_cost: int = 1
var base_damage: int = 1

var current_cost: int
var current_damage: int

# Multiplers
var cost_multipler: float = 1.25
var damage_multipler: float = 1.125

func activate() -> void:
	level = 1
	get_cost()

func get_cost() -> void:
	var float_cost: float = float(base_cost)
	float_cost = base_cost * cost_multipler ** level
	current_cost = int(snapped(float_cost, 1))

func get_damage() -> void:
	var float_damage: float = float(base_damage)
	float_damage = base_damage * damage_multipler ** level
	current_damage = int(snapped(float_damage, 1))

func update_vars() -> void:
	base_cost = hero_info.base_cost
	base_damage = hero_info.base_damage

func update_ui() -> void:
	name_label.text = hero_info.hero_name
	lvl_label.text = "LVL " + str(level)
	cost_label.text = str(current_cost) + " Coins"
	dps_label.text = str(current_damage) + " DPS"
	hero_icon.texture = hero_info.icon


func _on_lvl_up_button_pressed():
	level += 1
