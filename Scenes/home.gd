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
@onready var turnLabel: Label = $Turn/Label
@onready var timer: Timer = $Timer

@onready var x: Control = $X
@onready var o: Control = $O
const color = Color(1.0, 1.0, 1.0, 0.212)
const colorPlayer = Color(1.0, 1.0, 1.0, 1.0)
var playerTurn = true
var used = []
var playerUsed = []
var enemyUsed = []
var wait = true
var timergoing = false
var dub1
var dub2
var dub3
var dub4
var dub5
var dub6
var dub7
var dub8
var dub9
var randomPos
const winning = [
	[1, 2, 3],
	[4, 5, 6],
	[7, 8, 9], #---
	[1, 4, 7],# |
	[2, 5, 8],# |
	[3, 6, 9],# |
	[1, 5, 9], # /
	[3, 5, 7]
	
]
func _process(delta: float) -> void:
	if playerTurn == true:
		turnLabel.text = "Your Turn"
	else:
		turnLabel.text = "Wait.."
	if playerTurn == false:
		if timergoing == false:
			timer.wait_time = randi_range(0.5,2.5)
			timer.start()
			timergoing = true
		if wait == false:
			randomPos = randi_range(1,9)
			print(randomPos)
			if used.has(randomPos):
				print("used already :(")
				return
			else:
				
				if randomPos == 1:
					var o1 = o.duplicate()
					_1.add_child(o1)
					o1.position = Vector2(3.225,3.275)
					used += [1]
					enemyUsed += [1]
				if randomPos == 2:
					var o2 = o.duplicate()
					_2.add_child(o2)
					o2.position = Vector2(3.252,3.475)
					used += [2]
					enemyUsed += [2]
				if randomPos == 3:
					print("!!!!!!!!")
					var o3 = o.duplicate()
					_3.add_child(o3)
					o3.position = Vector2(3.725,3.325)
					used += [3]
					enemyUsed += [3]
				if randomPos == 4:
					print("!!!!!!!!")
					var o4 = o.duplicate()
					_4.add_child(o4)
					o4.position = Vector2(3.625,4.175)
					used += [4]
					enemyUsed += [4]
				if randomPos == 5:
					print("!!!!!!!!")
					var o5 = o.duplicate()
					_5.add_child(o5)
					o5.position = Vector2(3.775,3.725)
					used += [5]
					enemyUsed += [5]
				if randomPos == 6:
					print("!!!!!!!!")
					var o6 = o.duplicate()
					_6.add_child(o6)
					o6.position = Vector2(4.025,4.025)
					used += [6]
					enemyUsed += [6]
				if randomPos == 7:
					print("!!!!!!!!")
					var o7 = o.duplicate()
					_7.add_child(o7)
					o7.position = Vector2(3.325,4.53)
					used += [7]
					enemyUsed += [7]
				if randomPos == 8:
					print("!!!!!!!!")
					var o8 = o.duplicate()
					_8.add_child(o8)
					o8.position = Vector2(3.625,4.575)
					used += [8]
					
					enemyUsed += [8]
				if randomPos == 9:
					print("!!!!!!!!")
					var o9 = o.duplicate()
					_9.add_child(o9)
					o9.position = Vector2(3.825,4.525)
					used += [9]
					enemyUsed += [9]
				playerTurn = true
				timergoing = false
				wait = true
	for combo in winning:
		if combo.all(func(n): return n in playerUsed):
			if not turnLabel.text == "You won!":
				turnLabel.text = "You won!"
				$Turn2.visible = true
				$Turn2.position = Vector2(744, 300)


	for combo in winning:
		if combo.all(func(n): return n in enemyUsed):
			if not turnLabel.text == "You won!":
				turnLabel.text = "You lost :("
				$Turn2.visible = true
				$Turn2.position = Vector2(744, 300)
func removeAllDubs() -> void:
	if _1.get_child_count() >=  0.9:
		if not 1 in used:
			_1.get_child(0).queue_free()
	if _2.get_child_count() >=  0.9:
		if not 2 in used:
			_2.get_child(0).queue_free()
	if _3.get_child_count() >=  0.9:
		if not 3 in used:
			_3.get_child(0).queue_free()
	if _4.get_child_count() >=  0.9:
		if not 4 in used:
			_4.get_child(0).queue_free()
	if _5.get_child_count() >=  0.9:
		if not 5 in used:
			_5.get_child(0).queue_free()
	if _6.get_child_count() >=  0.9:
		if not 6 in used:
			_6.get_child(0).queue_free()
	if _7.get_child_count() >=  0.9:
		if not 7 in used:
			_7.get_child(0).queue_free()
	if _8.get_child_count() >=  0.9:
		if not 8 in used:
			_8.get_child(0).queue_free()
	if _9.get_child_count() >=  0.9:
		if not 9 in used:
			_9.get_child(0).queue_free()
func _on_1_mouse_entered() -> void:
	removeAllDubs()
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
	if _6.get_child_count() ==  0:
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
		if playerTurn == true:
			used += [1]
			playerUsed += [1]
			dub1.modulate = colorPlayer
			playerTurn = false
func _on_2_pressed() -> void:
	if not 2 in used:
		if playerTurn == true:
			used += [2]
			playerUsed += [2]
			dub2.modulate = colorPlayer
			playerTurn = false
func _on_3_pressed() -> void:
	if not 3 in used:
		if playerTurn == true:
			used += [3]
			playerUsed += [3]
			dub3.modulate = colorPlayer
			playerTurn = false
func _on_4_pressed() -> void:
	if not 4 in used:
		if playerTurn == true:
			used += [4]
			playerUsed += [4]
			dub4.modulate = colorPlayer
			playerTurn = false
func _on_5_pressed() -> void:
	if not 5 in used:
		if playerTurn == true:
			used += [5]
			playerUsed += [5]
			dub5.modulate = colorPlayer
			playerTurn = false
func _on_6_pressed() -> void:
	if not 6 in used:
		if playerTurn == true:
			used += [6]
			playerUsed += [6]
			dub6.modulate = colorPlayer
			playerTurn = false
func _on_7_pressed() -> void:
	if not 7 in used:
		if playerTurn == true:
			playerUsed += [7]
			used += [7]
			dub7.modulate = colorPlayer
			playerTurn = false
func _on_8_pressed() -> void:
	if not 8 in used:
		if playerTurn == true:
			used += [8]
			playerUsed += [8]
			dub8.modulate = colorPlayer
			playerTurn = false
func _on_9_pressed() -> void:
	if not 9 in used:
		if playerTurn == true:
			used += [9]
			playerUsed += [9]
			dub9.modulate = colorPlayer
			playerTurn = false

func _on_timer_timeout() -> void:
	wait = false
	timergoing = false


func _on_restart_button_pressed() -> void:
	get_tree().reload_current_scene()
