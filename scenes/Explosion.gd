extends Node2D

onready var particles = $CPUParticles2D
onready var audio_player = $AudioStreamPlayer
onready var sound_0 = preload("res://assets/game_sfx_firework_explosion_001.wav")
onready var sound_1 = preload("res://assets/game_sfx_firework_explosion_002.wav")


func _ready():
	var sounds = [sound_0, sound_1]
	particles.one_shot = true
	audio_player.stream = sounds[randi() % 2]
	audio_player.play()


func _process(delta):
	if not particles.is_emitting():
		queue_free()
