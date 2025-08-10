class_name QueuedNote

extends Note

var start_time: float

func _init(p_start_time: float, hz: float, p_duration: float) -> void:
    super(hz, p_duration)
    start_time = p_start_time

func started(time) -> bool:
    return time >= start_time
