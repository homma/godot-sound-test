class_name Note

enum Wave { SINE, SQUARE }

var duration: float
var elapsed_time: float = 0.0

var mix_rate: float = 44100.0
var pulse_hz: float
var phase: float = 0.0
var increment: float
var wave: int

func _init(hz: float, p_duration: float, p_wave: int = Wave.SINE) -> void:
    pulse_hz = hz
    duration = p_duration
    increment = pulse_hz / mix_rate
    wave = p_wave

func finished() -> bool:
    return elapsed_time >= duration

func next_frame() -> Vector2:
    elapsed_time += 1.0 / mix_rate
    if finished():
        return Vector2.ZERO
        
    var frame: Vector2

    match wave:
        Wave.SINE:
            frame = Vector2.ONE * sin(phase * TAU)
        Wave.SQUARE:
            frame = Vector2.ONE * (0.5 if phase > 0.5 else -0.5)

    phase = fmod(phase + increment, 1.0)

    return frame
