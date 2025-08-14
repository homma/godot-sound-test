class_name QueuedNote

extends Note

var start_time: float

func _init(p_start_time: float, hz: float, p_duration: float, p_wave: int = Wave.SINE) -> void:
    super(hz, p_duration, p_wave)
    start_time = p_start_time

func started(time) -> bool:
    return time >= start_time
