extends TextureRect


@onready var texture_rect: TextureRect = $"."

func _process(delta: float) -> void:
	texture_rect.size.y = get_window().size.y
	texture_rect.size.x = get_window().size.x
