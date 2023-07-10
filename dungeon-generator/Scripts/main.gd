extends Node2D

var tile_size = 64
var max_rooms = 10
var x_size = 18
var y_size = 10

var room_scene = preload("res://Scenes/room.tscn")
var room_instance = room_scene.instantiate()

# Called when the node enters the scene tree for the first time.
func _ready():
	add_room(0, 0)
	add_room(0, 1)
	add_room(0, 2)

func add_room(x, y):
	var room_instance = room_scene.instantiate()
	add_child(room_instance)
	room_instance.position = Vector2(x * tile_size * x_size, y * tile_size * y_size)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
