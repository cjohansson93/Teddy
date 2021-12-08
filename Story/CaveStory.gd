tool

extends Area2D


export(String, FILE) var next_story_path = ""
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _get_configuration_warning() -> String:
	if next_story_path == "":
		return "next_story_path must be set to story to work"
	else:
		return ""


func _on_CaveStory_area_entered(area):
	var scene = load(next_story_path)
	var scene_instance = scene.instance()
	scene_instance.set_name("scene")
	add_child(scene_instance)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_CaveStory_area_left(area):
	var scene = load(next_story_path)
	var scene_instance = scene.instance()
	scene_instance.set_name("scene")
	remove_child(scene_instance)
