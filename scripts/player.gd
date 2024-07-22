extends CharacterBody2D


const SPEED = 500
var JUMP_VELOCITY = -650
var initialX
var initialY
var scene

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	scene = get_tree().current_scene.name
	scene = str(scene)
	scene = int(scene)
	initialX = self.position.x
	initialY = self.position.y
	if scene > 10 or get_tree().current_scene.name == "end":
		JUMP_VELOCITY = -800
		gravity = gravity - 150

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("ui_right"):
		$playerSprite.flip_h = true
	if Input.is_action_just_pressed("ui_left"):
		$playerSprite.flip_h = false

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
func die():
	self.position.x = initialX
	self.position.y = initialY
