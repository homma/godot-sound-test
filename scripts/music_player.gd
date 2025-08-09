class_name MusicPlayer

extends AudioStreamPlayer

var playback: AudioStreamGeneratorPlayback
var music: Music

func _ready():
    stream = AudioStreamGenerator.new()

func play_music():
    play()
    playback = get_stream_playback()

func _process(_delta: float):
    if music == null:
        return

    if not playing:
        return

    if music.finished():
        stop()
        music = null
        return

    fill_buffer()

func fill_buffer():

    var count = playback.get_frames_available()

    for i in range(count):
        if music.finished():
            return

        var frame := music.next_frame()
        playback.push_frame(frame)
