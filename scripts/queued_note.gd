class_name QueuedNote

var start_time: float
var note: Note

func _init(p_start_time: float, hz: float, duration: float) -> void:
    note = Note.new(hz, duration)
    start_time = p_start_time

func started(time) -> bool:
    return time >= start_time

func finished() -> bool:
    return note.finished()

func next_frame() -> Vector2:
    return note.next_frame()
