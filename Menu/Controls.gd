extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$MenuContainer/HBoxContainer/Buttons/ReturnButton.grab_focus()

var scene_path_to_load

func _on_ReturnButton_pressed():
	scene_path_to_load = "res://Menu/Menu.tscn"
	$FadeIn.show()
	$FadeIn.fade_in()

func _on_FadeIn_fade_finished():
	get_tree().change_scene(scene_path_to_load)
