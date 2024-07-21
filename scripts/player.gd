extends CharacterBody2D


const SPEED = 500
const JUMP_VELOCITY = -650
var spikeNode
var initialX
var initialY

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	spikeNode = get_node("/root/Spike")
	initialX = self.position.x
	initialY = self.position.y

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
