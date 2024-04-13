extends Node

enum humanoid_species{HUMAN, ELF, ORC, DWARF}
enum non_humanoid_species{DOG, CAT, SPIDER, OWL}

var h_descriptions: Dictionary = {
	"Human": "The most adaptable and average of the races.",
	"Elf": "The tall and old magic people.",
	"Orc": "Big, strong, and fond of combat.",
	"Dwarf": "Short in stature but strongest in mind.",
}

var n_h_descriptions: Dictionary = {
	"Dog": "Man's best friend.",
	"Cat": "Curious little felines.",
	"Spider": "Creepy little things with too many legs.",
	"Owl": "Predator birds seen at night.",
}

enum character_classes{FIGHTER, RANGER, MAGE, ROGUE, CLERIC}

var class_descriptions: Dictionary = {
	"Fighter": "Strong warriors who use melee damage.",
	"Ranger": "Dexterous warriors who use ranged damage.",
	"Mage": "Intelligent scholars who learnt how to use magic.",
	"Rogue": "Subtle and sticks to the shadows.",
	"Cleric": "Magical healers and crafters.",
}

enum childhood_backstory{STUDENT, URCHIN, NOBLE}

var c_backstory_descriptions: Dictionary = {
	"Academy Student": "Sent to an academy at a young age to learn about the world.",
	"Urchin": "An orphan living on the streets.",
	"Noble": "Waited on hand and foot with connections in high places.",
}

enum adult_backstory{HERBALIST, BANDIT, PROFESSOR}

var a_backstory_descriptions: Dictionary = {
	"Herbalist": "Healing those around you with simple herbs.",
	"Bandit": "Robbing and raiding in a close-knit group.",
	"Professor": "Teaching the next generation.",
}
