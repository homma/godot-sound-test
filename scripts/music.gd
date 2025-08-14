class_name Music

var elapsed_time: float = 0.0
var mix_rate: float = 44100.0

var music_queue: Array[QueuedNote]
var started: Array[QueuedNote]

func _init():
    started = []
    music_queue = []

func a(start_time: float, hz: float, duration: float, p_wave: int = Note.Wave.SINE):
    add_note(start_time, hz, duration, p_wave)

func add_note(start_time: float, hz: float, duration: float, p_wave: int = Note.Wave.SINE):
    var note := QueuedNote.new(start_time, hz, duration, p_wave)

    if music_queue.size() == 0:
        music_queue.push_back(note)
        return

    var last = music_queue[-1]
    if note.start_time < last.start_time:
        print("[ERROR]: need to add a note in chronological order")
        return

    music_queue.push_back(note)

func add_started_note():
    while music_queue.size() > 0 and music_queue[0].start_time <= elapsed_time:
       var note = music_queue.pop_front()
       started.push_back(note)

func remove_finished_note():
    started = started.filter(note_not_finished)

func note_not_finished(note) -> bool:
    return not note.finished()

func finished() -> bool:
    return music_queue.size() == 0 and started.size() == 0

func next_frame() -> Vector2:
    elapsed_time += 1.0 / mix_rate

    add_started_note()
    remove_finished_note()

    var note = Vector2.ZERO

    if started.size() == 0:
        return note

    for i in started:
        note += i.next_frame()

    note = note / started.size()

    return note
