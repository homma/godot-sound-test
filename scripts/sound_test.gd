class_name SoundTest

extends Node

var player: MusicPlayer

func _ready():
    player = $MusicPlayer
    set_music()
    player.play_music()

func set_music():
    var music = Music.new()
    var c4 = 261.6256
    var d4 = 293.6648
    var e4 = 329.6276
    var f4 = 349.2282
    var g4 = 391.9954
    var a5 = 440.0000
    var b5 = 493.8833
    var c5 = 523.2511

    music.add_note(0.0, c4, 1)
    music.add_note(2.0, e4, 1)
    music.add_note(4.0, g4, 1)
    music.add_note(6.0, c4, 4)
    music.add_note(6.0, e4, 4)
    music.add_note(6.0, g4, 4)

    music.add_note(11.0, c4, 1)
    music.add_note(12.0, d4, 1)
    music.add_note(13.0, e4, 1)
    music.add_note(14.0, f4, 1)
    music.add_note(15.0, g4, 1)
    music.add_note(16.0, a5, 1)
    music.add_note(17.0, b5, 1)
    music.add_note(18.0, c5, 2)

    player.music = music
