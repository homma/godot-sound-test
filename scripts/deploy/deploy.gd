@tool
extends EditorScript

const utils = preload("res://scripts/lib/utils.gd")
const music_player = preload("res://scripts/music_player.gd")

func _run():
    set_project()
    var scene = create_main_scene()
    EditorInterface.save_all_scenes()
    utils.set_main_scene(scene)

func set_project():
    utils.set_project_name("sound test")

func create_main_scene():

    # root node
    var root = SoundTest.new()
    root.set_name("SoundTest")

    # child node
    var child = MusicPlayer.new()
    child.set_name("MusicPlayer")
    utils.add_child(root, child)

    return utils.create_scene_from_node(root, "SoundTest")
