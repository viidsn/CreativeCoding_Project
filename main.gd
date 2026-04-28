extends Control

@onready var audio1 = $Audio1
@onready var audio2 = $Audio2
@onready var audio3 = $Audio3
@onready var slider = $HSlider

var radius = 50

func _process(delta):
	if radius > 50:
		radius -= 100 * delta
	queue_redraw()

func _draw():
	draw_circle(Vector2(550, 300), radius, Color(randf(), randf(), randf()))

func play_sound(player):
	player.volume_db = linear_to_db(slider.value)
	player.play()
	radius = 50 + slider.value * 150

func _on_button1_pressed():
	play_sound(audio1)

func _on_button2_pressed():
	play_sound(audio2)

func _on_button3_pressed():
	play_sound(audio3)

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_Q:
			play_sound(audio1)
		elif event.keycode == KEY_W:
			play_sound(audio2)
		elif event.keycode == KEY_E:
			play_sound(audio3)
