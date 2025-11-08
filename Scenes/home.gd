extends Control
@onready var _1: Button = $"Grid/1"
@onready var _2: Button = $"Grid/2"
@onready var _3: Button = $"Grid/3"
@onready var _4: Button = $"Grid/4"
@onready var _5: Button = $"Grid/5"
@onready var _6: Button = $"Grid/6"
@onready var _7: Button = $"Grid/7"
@onready var _8: Button = $"Grid/8"
@onready var _9: Button = $"Grid/9"
@onready var phanthom: Control = $Phanthom

@onready var x: Control = $X
@onready var o: Control = $O
const color = Color(0.0, 0.0, 0.0, 0.129)
const colorPlayer = Color(1.0, 1.0, 1.0, 1.0)
var playerTurn = true
var used = []
var dub1
var dub2
var dub3
var dub4
var dub5
var dub6
var dub7
var dub8
var dub9

func removeAllDubs() -> void:
	if _1.get_child_count() >=  0.9:
		print(_1.get_children(1))
		if not 1 in used:
			_1.get_child(0).queue_free()
	if _2.get_child_count() >=  0.9:
		if not 2 in used:
			_2.get_child(0).queue_free()
		print(_2.get_children(1))
	if _3.get_child_count() >=  0.9:
		print(_3.get_children(1))
		if not 3 in used:
			_2.get_child(0).queue_free()
	if _4.get_child_count() >=  0.9:
		print(_4.get_children(1))
		_4.get_child(0).queue_free()
	if _5.get_child_count() >=  0.9:
		print(_5.get_children(1))
		_5.get_child(0).queue_free()
	if _6.get_child_count() >=  0.9:
		print(_6.get_children(1))
		_6.get_child(0).queue_free()
	if _7.get_child_count() >=  0.9:
		print(_7.get_children(1))
		_7.get_child(0).queue_free()
	if _8.get_child_count() >=  0.9:
		print(_8.get_children(1))
		_8.get_child(0).queue_free()
	if _9.get_child_count() >=  0.9:
		print(_9.get_children(1))
		_9.get_child(0).queue_free()
func _on_1_mouse_entered() -> void:
	removeAllDubs()
	print("1")
	if _1.get_child_count() ==  0:
		dub1 = x.duplicate()
		_1.add_child(dub1)
		dub1.position = Vector2(1.5, -2.5)
		dub1.modulate = color
		print(dub1.name, Vector2(dub1.position))
func _on_2_mouse_entered() -> void:
	print("2")
	removeAllDubs()
	if _2.get_child_count() ==  0:
		dub2 = x.duplicate()
		_2.add_child(dub2)
		dub2.position = Vector2(1.5, -2)
		dub2.modulate = color
		print(dub2.name, Vector2(dub2.position))
func _on_3_mouse_entered() -> void:
	print("3")
	removeAllDubs()
	if _3.get_child_count() ==  0:
		dub3 = x.duplicate()
		_3.add_child(dub3)
		dub3.position = Vector2(1.5, -2)
		dub3.modulate = color
		print(dub3.name, Vector2(dub3.position))
func _on_4_mouse_entered() -> void:
	removeAllDubs()
	print("4")
	if _4.get_child_count() ==  0:
		dub4 = x.duplicate()
		_4.add_child(dub4)
		dub4.position = Vector2(1.5, -1.5)
		dub4.modulate = color
func _on_5_mouse_entered() -> void:
	print("5")
	removeAllDubs()
	if _5.get_child_count() ==  0:
		dub5 = x.duplicate()
		_5.add_child(dub5)
		dub5.position = Vector2(1.5, -1.5)
		dub5.modulate = color
func _on_6_mouse_entered() -> void:
	print("6")
	removeAllDubs()
	if _7.get_child_count() ==  0:
		dub6 = x.duplicate()
		_6.add_child(dub6)
		dub6.position = Vector2(1.5, -1.5)
		dub6.modulate = color
func _on_7_mouse_entered() -> void:
	print("7")
	removeAllDubs()
	if _7.get_child_count() ==  0:
		dub7 = x.duplicate()
		_7.add_child(dub7)
		dub7.position = Vector2(1.5, -1.5)
		dub7.modulate = color
func _on_8_mouse_entered() -> void:
	print("8")
	removeAllDubs()
	if _8.get_child_count() ==  0:
		dub8 = x.duplicate()
		_8.add_child(dub8)
		dub8.position = Vector2(1.5, -1)
		dub8.modulate = color
func _on_9_mouse_entered() -> void:
	print("9")
	removeAllDubs()
	if _9.get_child_count() ==  0:
		dub9 = x.duplicate()
		_9.add_child(dub9)
		dub9.position = Vector2(1.5, -1)
		dub9.modulate = color

func _on_1_pressed() -> void:
	if not 1 in used:
		print("Okay")
		used += [1]
		dub1.modulate = colorPlayer




func _on_2_pressed() -> void:
	if not 2 in used:
		print("Okay")
		used += [2]
		dub2.modulate = colorPlayer

func _on_3_pressed() -> void:
	if not 3 in used:
		print("Okay")
		used += [3]
		dub3.modulate = colorPlayer
