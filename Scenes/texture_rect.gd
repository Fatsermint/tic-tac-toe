extends TextureRect


@onready var texture_rect: TextureRect = $"."
var window_ratio: float
var win
func _process(delta: float) -> void:
	win = get_window()
	window_ratio = float(win.size.x) / win.size.y if float(win.size.x) > win.size.y else win.size.y / float(win.size.x)
	texture_rect.scale.x = window_ratio * 0.9
	texture_rect.scale.y = window_ratio * 0.9
