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
			"level1": get_tree().change_scene_to_file("res://levels/level2.tscn")
			"level2": get_tree().change_scene_to_file("res://levels/level3.tscn")
			"level3": get_tree().change_scene_to_file("res://levels/level4.tscn")
			"level4": get_tree().change_scene_to_file("res://levels/level5.tscn")
