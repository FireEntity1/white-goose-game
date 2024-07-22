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
			"level5": get_tree().change_scene_to_file("res://levels/level6.tscn")
			"level6": get_tree().change_scene_to_file("res://levels/level7.tscn")
			"level7": get_tree().change_scene_to_file("res://levels/level8.tscn")
			"level8": get_tree().change_scene_to_file("res://levels/level9.tscn")
			"level9": get_tree().change_scene_to_file("res://levels/level10.tscn")
			"level10": get_tree().change_scene_to_file("res://levels/level11.tscn")
			"level11": get_tree().change_scene_to_file("res://levels/level12.tscn")
			"level12": get_tree().change_scene_to_file("res://levels/level13.tscn")
			"level13": get_tree().change_scene_to_file("res://levels/level14.tscn")
			"level14": get_tree().change_scene_to_file("res://levels/level15.tscn")
			"level15": get_tree().change_scene_to_file("res://levels/level16.tscn")
