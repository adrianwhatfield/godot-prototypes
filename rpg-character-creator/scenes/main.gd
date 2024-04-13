extends Control

@onready var child_backstory_info: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Backstory/ChildBackstoryInfo
@onready var adult_backstory_info: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Backstory/AdultBackstoryInfo
@onready var species_info: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Species/SpeciesInfo
@onready var class_info: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Class/ClassInfo
@onready var strength: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Stats/Strength
@onready var dexterity: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Stats/Dexterity
@onready var constitution: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Stats/Constitution
@onready var intelligence: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Stats/Intelligence
@onready var wisdom: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Stats/Wisdom
@onready var charisma: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Stats/Charisma
@onready var luck: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/Stats/Luck


func _on_child_backstory_button_item_selected(index: int) -> void:
	child_backstory_info.show()
	match index:
		0:
			child_backstory_info.text = CharacterGlobals.c_backstory_descriptions["Academy Student"]
		1:
			child_backstory_info.text = CharacterGlobals.c_backstory_descriptions["Urchin"]
		2:
			child_backstory_info.text = CharacterGlobals.c_backstory_descriptions["Noble"]


func _on_adult_backstory_button_item_selected(index: int) -> void:
	adult_backstory_info.show()
	match index:
		0:
			adult_backstory_info.text = CharacterGlobals.a_backstory_descriptions["Herbalist"]
		1:
			adult_backstory_info.text = CharacterGlobals.a_backstory_descriptions["Bandit"]
		2:
			adult_backstory_info.text = CharacterGlobals.a_backstory_descriptions["Professor"]


func _on_species_button_item_selected(index: int) -> void:
	species_info.show()
	match index:
		0:
			species_info.text = CharacterGlobals.h_descriptions["Human"]
		1:
			species_info.text = CharacterGlobals.h_descriptions["Elf"]
		2:
			species_info.text = CharacterGlobals.h_descriptions["Dwarf"]
		3:
			species_info.text = CharacterGlobals.h_descriptions["Orc"]


func _on_class_button_item_selected(index: int) -> void:
	class_info.show()
	match index:
		0:
			class_info.text = CharacterGlobals.class_descriptions["Fighter"]
		1:
			class_info.text = CharacterGlobals.class_descriptions["Ranger"]
		2:
			class_info.text = CharacterGlobals.class_descriptions["Mage"]
		3:
			class_info.text = CharacterGlobals.class_descriptions["Rogue"]
		4:
			class_info.text = CharacterGlobals.class_descriptions["Cleric"]


func _on_reroll_button_pressed() -> void:
	strength.text = "STR: " + str(randi_range(1, 12))
	dexterity.text = "DEX: " + str(randi_range(1, 12))
	constitution.text = "CON: " + str(randi_range(1, 12))
	intelligence.text = "INT: " + str(randi_range(1, 12))
	wisdom.text = "WIS: " + str(randi_range(1, 12))
	charisma.text = "CHA: " + str(randi_range(1, 12))
	luck.text = "LUK: " + str(randi_range(1, 12))
