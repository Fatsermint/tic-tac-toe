extends Control

@onready var label: Label = $MarginContainer/Label

func _on_color_rect_2_oto_2() -> void:
	label.text = "2"


func _on_color_rect_2_oto_b() -> void:
	label.text = "B"


func _on_color_rect_2_oto_c() -> void:
	label.text = "C"



func _on_color_rect_2_oto_o() -> void:
	label.text = "O"
