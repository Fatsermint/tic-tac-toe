extends ColorRect


signal xtoX
signal xto1
signal xtoA
signal xtoI
signal otoO
signal oto2
signal otoB
signal otoC
@onready var main: ColorRect = self

func _on_open_button_pressed() -> void:
	main.visible = true


func _on_exit_button_pressed() -> void:
	main.visible = false


func _on_IC_button_pressed() -> void:
	xtoI.emit()
	otoC.emit()


func _on_AB_button_pressed() -> void:
	xtoA.emit()
	otoB.emit()


func _on_XO_button_pressed() -> void:
	xtoX.emit()
	otoO.emit()


func _on_12_button_pressed() -> void:
	xto1.emit()
	oto2.emit()
