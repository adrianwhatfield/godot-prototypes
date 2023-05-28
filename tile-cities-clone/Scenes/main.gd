extends Node2D

# Textures for the tiles
## Base
var base_one_by_one = preload("res://Art/1x1/1x1-base.png")

## Buildings
### 1x1
var purple_one_by_one = preload("res://Art/1x1/1x1-building1.png")
var red_one_by_one = preload("res://Art/1x1/1x1-building2.png")
var yellow_one_by_one = preload("res://Art/1x1/1x1-building3.png")
var station_one_by_one = preload("res://Art/1x1/1x1-building4.png")

### 2x1

### 2x2

## Tram Line
var tram_line_one_by_one = preload("res://Art/1x1/1x1-tram.png")


# Tile variables
var current_tile = {
	"Size": "value",
	"Building": "value",
	"Tram Line": false,
}

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	generate_tile()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func generate_tile(): # Generate a tile and assign the result to the dictionary
	# Generate size (1x1, 2x1, 2x2)
	var tile_size = randi() % 3
	
	match tile_size:
		0:
			current_tile["Size"] = "1x1"
			print(current_tile["Size"])
		1:
			current_tile["Size"] = "2x1"
			print(current_tile["Size"])
		2:
			current_tile["Size"] = "2x2"
			print(current_tile["Size"])
	
	# Generate buildings (purple, red, yellow, tram station, blank)
	var building_type = randi() % 5
	var is_station = false
	
	match building_type:
		0:
			current_tile["Building"] = "purple"
			print(current_tile["Building"])
			is_station = false
		1:
			current_tile["Building"] = "red"
			print(current_tile["Building"])
			is_station = false
		2:
			current_tile["Building"] = "yellow"
			print(current_tile["Building"])
			is_station = false
		3:
			current_tile["Building"] = "tram"
			print(current_tile["Building"])
			is_station = true
		4:
			current_tile["Building"] = "blank"
			print(current_tile["Building"])
			is_station = false
	
	# Generate tram line (yes, no, already a station)
	if is_station == true:
		current_tile["Tram Line"] = true
		print(current_tile["Tram Line"])
	elif randi() % 2 == 0:
		current_tile["Tram Line"] = true
		print(current_tile["Tram Line"])
	else:
		current_tile["Tram Line"] = false
		print(current_tile["Tram Line"])

func contruct_tile(): # Contruct the tile from the dictionary
	pass
