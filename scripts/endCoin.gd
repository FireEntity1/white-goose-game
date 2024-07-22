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
			"title": get_tree().change_scene_to_file("res://levels/tutorial.tscn")
			"tutorial": get_tree().change_scene_to_file("res://levels/level1.tscn")
			"1": get_tree().change_scene_to_file("res://levels/level2.tscn")
			"2": get_tree().change_scene_to_file("res://levels/level3.tscn")
			"3": get_tree().change_scene_to_file("res://levels/level4.tscn")
			"4": get_tree().change_scene_to_file("res://levels/level5.tscn")
			"5": get_tree().change_scene_to_file("res://levels/level6.tscn")
			"6": get_tree().change_scene_to_file("res://levels/level7.tscn")
			"7": get_tree().change_scene_to_file("res://levels/level8.tscn")
			"8": get_tree().change_scene_to_file("res://levels/level9.tscn")
			"9": get_tree().change_scene_to_file("res://levels/level10.tscn")
			"10": get_tree().change_scene_to_file("res://levels/level11.tscn")
			"11": get_tree().change_scene_to_file("res://levels/level12.tscn")
			"12": get_tree().change_scene_to_file("res://levels/level13.tscn")
			"13": get_tree().change_scene_to_file("res://levels/level14.tscn")
			"14": get_tree().change_scene_to_file("res://levels/level15.tscn")
			"15": get_tree().change_scene_to_file("res://levels/level16.tscn")
			"16": get_tree().change_scene_to_file("res://levels/level17.tscn")
			"17": get_tree().change_scene_to_file("res://levels/level18.tscn")
			"18": get_tree().change_scene_to_file("res://levels/endscene.tscn")
			"end": get_tree().quit()
