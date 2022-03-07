extends "res://Scenes/Turrets/Turrets.gd"

var missile_node
var loader_node

func spawn_rockets():
	missile_node = get_node("Turret")
	loader_node = missile_node.get_node("Loader")
	var missile_right = load("res://Scenes/SupportScenes/Rocket.tscn").instance()
	var missile_left = load("res://Scenes/SupportScenes/Rocket.tscn").instance()
	var offset_right = Vector2(0,10)
	var offset_left = Vector2(0,-10)
	missile_right.get_node("Sprite").set_offset(offset_right)
	missile_left.get_node("Sprite").set_offset(offset_left)
	loader_node.add_child(missile_right, true)
	loader_node.add_child(missile_left, true)
