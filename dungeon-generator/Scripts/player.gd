extends CharacterBody2D


const SPEED = 200.0

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	if velocity.x > 0:
		$Sprite2D.flip_h = true
	elif velocity.x < 0:
		$Sprite2D.flip_h = false
	
	move_and_slide()

func _process(delta):
	if Manager.camera_zoom == 1:
		$Camera2D.zoom = Vector2(1, 1)
	if Manager.camera_zoom == 2:
		$Camera2D.zoom = Vector2(2, 2)
	if Manager.camera_zoom == 3:
		$Camera2D.zoom = Vector2(3, 3)
