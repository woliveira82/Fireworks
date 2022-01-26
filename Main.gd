extends Node2D

var Explosion = preload("res://scenes/Explosion.tscn")


func _ready():
	randomize()


func _input(event):
	if event is InputEventMouseButton:
		if event.pressed:
			var explosion = Explosion.instance()
			explosion.position = event.position
			add_child(explosion)
