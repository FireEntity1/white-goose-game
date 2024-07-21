extends Area2D

var currentScene

func _ready():
	currentScene = get_tree().current_scene.name
	print(currentScene)

func _process(delta):
	pass


func _on_body_entered(body):
	if body is CharacterBody2D:
		match currentScene:
			"tutorial": get_tree().change_scene_to_file("res://levels/level1.tscn")
