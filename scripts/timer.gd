extends Node2D

var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	time += delta
	$Label.text = str(round_to_dec(time, 1))

func round_to_dec(num, digit):
	return round(num * pow(10.0, digit)) / pow(10.0, digit)

