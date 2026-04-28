extends Control

@onready var audio1 = $Audio1
@onready var audio2 = $Audio2
@onready var audio3 = $Audio3
@onready var slider = $HSlider

var radius = 50
var circle_colour = Color.RED

var timer = 0
var auto_play = false

var vol1 = 1.0
var vol2 = 4.0
var vol3 = 0.7

func _process(delta):
	if auto_play:
		timer += delta
		
		if timer > (1.0 - slider.value):
			timer = 0
			random_play()

	if radius > 50:
		radius -= 100 * delta
		
	queue_redraw()

func random_play():
	var r = randi() % 3
	if r == 0:
		play_sound(audio1, vol1)
	elif r == 1:
		play_sound(audio2, vol2)
	else:
		play_sound(audio3, vol3)

func _draw():
	draw_circle(Vector2(550, 200), radius, circle_colour)

func play_sound(player, base_volume):
	player.volume_db = linear_to_db(slider.value * base_volume)
	player.play()
	radius = 50 + slider.value * 200
	circle_colour = Color(randf(), randf(), randf(), 0.8)

func _on_button1_pressed():
	play_sound(audio1, vol1)

func _on_button2_pressed():
	play_sound(audio2, vol2)

func _on_button3_pressed():
	play_sound(audio3, vol3)

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_Q:
			play_sound(audio1, vol1)
		elif event.keycode == KEY_W:
			play_sound(audio2, vol2)
		elif event.keycode == KEY_E:
			play_sound(audio3, vol3)


func _on_auto_button_pressed():
	auto_play = !auto_play

	if auto_play:
		$AutoButton.text = "Auto Melody: ON"

	else:
		$AutoButton.text = "Auto Melody: OFF"
