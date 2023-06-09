extends Node2D

var tile_size = 64
var max_rooms = 10
var x_size = 18
var y_size = 10

var room_scene = preload("res://Scenes/room.tscn")
var room_instance = room_scene.instantiate()

var rooms = [Vector2(0, 0)]
var previous_room = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	make_dungeon()

# Adds a room to the scene
func add_room(x, y):
	var room_instance = room_scene.instantiate()
	$Dungeon.add_child(room_instance)
	room_instance.position = Vector2(x * tile_size * x_size, y * tile_size * y_size)

# Generates the next room position
func generate_room(room):
	var next_room_direction = randi() % 4
	
	match next_room_direction:
		0: # Next room is up
			return Vector2(room.x - 1, room.y)
		1: # Next room is down
			return Vector2(room.x + 1, room.y)
		2: # Next room is left
			return Vector2(room.x, room.y - 1)
		3: # Next room is right
			return Vector2(room.x, room.y + 1)

# Generates a whole dungeon using max_rooms and checks for repeats
func generate_dungeon():
	for x in max_rooms: # Loop through max_rooms
		var current_room = generate_room(previous_room)
		rooms.append(current_room)
		previous_room = current_room

# Removes duplicates rooms in the rooms array
func remove_duplicates():
	var new_rooms = []
	for room in rooms:
		if room in new_rooms:
			continue
		else:
			new_rooms.append(room)
	return new_rooms

# Resets the dungeon to the start without having to reload main.tscn
func reset_dungeon():
	rooms = [Vector2(0, 0)]
	previous_room = Vector2(0, 0)
	$Player.position = Vector2(550, 300)
	for child in $Dungeon.get_children():
		child.queue_free()

# Add the whole rooms array to the scene
func add_dungeon():
	for room in rooms:
		add_room(room.x, room.y)

# Makes the whole dungeon
func make_dungeon():
	generate_dungeon()
	remove_duplicates()
	add_dungeon()

# Allows the player to regenerate and reset the dungeon in-game
func _on_ui_reset_dungeon():
	reset_dungeon()
	make_dungeon()
