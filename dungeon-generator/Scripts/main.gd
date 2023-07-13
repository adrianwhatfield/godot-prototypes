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
	
	add_room(0, 0)
	add_room(0, 1)
	add_room(0, 2)

# Adds a room to the scene
func add_room(x, y):
	var room_instance = room_scene.instantiate()
	add_child(room_instance)
	room_instance.position = Vector2(x * tile_size * x_size, y * tile_size * y_size)

# Generates the next room position
func generate_room(room):
	var x_previous = room.x
	var y_previous = room.y
	
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
