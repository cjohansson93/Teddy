tool

extends Area2D

export(String, FILE) var next_scene_path = ""
export(Vector2) var player_spawn_location = Vector2.ZERO

func _get_configuration_warning() -> String:
	if next_scene_path == "":
		return "next_scene_path must be set to portal to work"
	else:
		return ""

func _on_Portal_area_entered(area):
	Global.player_initial_map_position = player_spawn_location
	if get_tree().change_scene(next_scene_path) != OK:
		#error handling here
		print("Error: Unavailable scene!")
