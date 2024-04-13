extends Resource
class_name Character

@export_category("Basics")
@export var character_name: String
@export var age: int
@export var species: CharacterGlobals.humanoid_species

@export_category("Stats")
@export var strength: int
@export var dexterity: int
@export var constitution: int
@export var intelligence: int
@export var wisdom: int
@export var charisma: int
@export var luck: int

@export_category("Background")
@export var char_class: CharacterGlobals.character_classes
@export var child_backstory: CharacterGlobals.childhood_backstory
@export var adult_backstory: CharacterGlobals.adult_backstory
