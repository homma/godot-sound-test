class_name Note

var duration: float
var elapsed_time: float = 0.0

var mix_rate: float = 44100.0
var pulse_hz: float
var phase: float = 0.0
var increment: float

func _init(hz: float, p_duration: float) -> void:
    pulse_hz = hz
    duration = p_duration
    increment = pulse_hz / mix_rate

func finished() -> bool:
    return elapsed_time >= duration

func next_frame() -> Vector2:
    elapsed_time += 1.0 / mix_rate
    if finished():
        return Vector2.ZERO
        
    var frame = Vector2.ONE * sin(phase * TAU)
    phase = fmod(phase + increment, 1.0)

    return frame
