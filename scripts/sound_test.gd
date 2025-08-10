class_name SoundTest

extends Node

var player: MusicPlayer

const c4 = 261.6256
const d4 = 293.6648
const e4 = 329.6276
const f4 = 349.2282
const g4 = 391.9954
const a5 = 440.0000
const b5 = 493.8833
const c5 = 523.2511

func _ready():
    player = $MusicPlayer
    set_music()
    player.play_music()

func set_music():
    var m = Music.new()

    var t: float = 0.0
    t += add_chord_sample(m, t)
    t += add_scale_sample(m, t)
    t += add_melody_sample(m, t)

    player.music = m

## t: base time
func add_chord_sample(m: Music, t: float) -> float:
    m.a(t + 0.0, c4, 1)
    m.a(t + 2.0, e4, 1)
    m.a(t + 4.0, g4, 1)
    m.a(t + 6.0, c4, 4)
    m.a(t + 6.0, e4, 4)
    m.a(t + 6.0, g4, 4)

    # elapsed time
    return 11

## t: base time
func add_scale_sample(m: Music, t: float) -> float:
     m.a(t + 0.0, c4, 1)
     m.a(t + 1.0, d4, 1)
     m.a(t + 2.0, e4, 1)
     m.a(t + 3.0, f4, 1)
     m.a(t + 4.0, g4, 1)
     m.a(t + 5.0, a5, 1)
     m.a(t + 6.0, b5, 1)
     m.a(t + 7.0, c5, 4)

    # elapsed time
     return 12

## t: base time
func add_melody_sample(m: Music, t: float) -> float:
     m.a(t + 0.0, c4, 1)
     m.a(t + 1.0, c4, 1)
     m.a(t + 2.0, g4, 1)
     m.a(t + 3.0, g4, 1)
     m.a(t + 4.0, a5, 1)
     m.a(t + 5.0, a5, 1)
     m.a(t + 6.0, g4, 2)

     t += 8

     m.a(t + 0.0, f4, 1)
     m.a(t + 1.0, f4, 1)
     m.a(t + 2.0, e4, 1)
     m.a(t + 3.0, e4, 1)
     m.a(t + 4.0, d4, 1)
     m.a(t + 5.0, d4, 1)
     m.a(t + 6.0, c4, 2)

    # elapsed time
     return 19
