extends Control

@onready var label: Label = $MarginContainer/Label


func _on_color_rect_2_xto_1() -> void:
	label.text = "1"


func _on_color_rect_2_xto_a() -> void:
	label.text = "A"



func _on_color_rect_2_xto_i() -> void:
	label.text = "I"


func _on_color_rect_2_xto_x() -> void:
	label.text = "X"
