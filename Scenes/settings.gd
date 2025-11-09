extends TextureRect


@onready var settingsTexture: TextureRect = $"."
const backround1 = preload("uid://c6c660x2uyaet")
const backround2 = preload("uid://bxcoh27sefsv2")
const backround3 = preload("uid://duob4oylnimi6")
const backround4 = preload("uid://b0j50rxrtulyk")

static var wins = 0
static var losts = 0
static var played = 0
@onready var backround: TextureRect = $"../TextureRect"

@onready var settings: ColorRect = $"../ColorRect"

var open = false
var currentBg = 1
func _process(delta: float) -> void:
	if currentBg == 1:
		backround.texture = backround1
	if currentBg == 2:
		backround.texture = backround2
	if currentBg == 3:
		backround.texture = backround3
	if currentBg == 4:
		backround.texture = backround4
func _on_settings_open_button_pressed() -> void:
	if open == true:
		open = false
		settings.visible = false
	else:
		open = true
		played = wins + losts
		settings.visible = true
		$"../ColorRect/Played".text = "Games played " + str(played)
		$"../ColorRect/Win".text = "Games won " + str(wins)
		$"../ColorRect/Lost".text = "Games losT " + str(losts) 

func _on_backround_button_pressed() -> void:
	currentBg += 1
	if currentBg == 5:
		currentBg = 1


func _on_control_lost() -> void:
	losts += 1


func _on_control_win() -> void:
	wins += 1
