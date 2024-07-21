extends Node2D

var hit

func _on_area_body_entered(body):
	if body is CharacterBody2D:
		body.die()
