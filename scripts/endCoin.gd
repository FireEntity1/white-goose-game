extends Area2D

var currentScene

func _ready():
	currentScene = get_tree().current_scene.name

func _process(delta):
	pass


func _on_body_entered(body):
	if body is CharacterBody2D:
		print("END!!!")
