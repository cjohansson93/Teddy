extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$MenuContainer/HBoxContainer/Buttons/StartButton.grab_focus()

var scene_path_to_load

func _on_StartButton_pressed():
	scene_path_to_load = "res://CaveLevel.tscn"
	$FadeIn.show()
	$FadeIn.fade_in()

func _on_ControlsButton2_pressed():
	scene_path_to_load = "res://Menu/Controls.tscn"
	$FadeIn.show()
	$FadeIn.fade_in()


func _on_QuitButton3_pressed():
	get_tree().quit()


func _on_FadeIn_fade_finished():
	get_tree().change_scene(scene_path_to_load)
