extends Node2D

var turn12 = 0
var turn13 = 0
var turn14 = 0
var turn22 = 0
var turn24 = 0
var turn34 = 0
var turn35 = 0
var turn43 = 0
var turn44 = 0
var turn52 = 0
var turn53 = 0
var turn61 = 0
var turn62 = 0
var turn63 = 0
var turn64 = 0
@onready var label = $win
var win1 = false
var win2 = false
var win3 = false
var win4 = false
var win5 = false
var win6 = false
var win7 = false
var win8 = false
var win9 = false
var win10 = false
var win11 = false
var win12 = false
var win13 = false
var win14 = false
var win15 = false
signal win

func  _process(delta: float) -> void:
	if win1 == true and win2 == true and win3 == true and win4 == true and win5 == true and win6 == true and win7 == true and win8 == true and win9 == true and win10 == true and win11 == true and win12 == true and win13 == true and win14 == true and win15 == true:
		emit_signal("win")
		$win.show()
	if turn12 == 2:
		$"1,2".play("new_animation_1")
		win1 = true
	if turn13 == 1:
		$"1,3".play("new_animation_1")
		win2 = true
	if turn14 == 2:
		$"1,4".play("new_animation_1")
		win3 = true
	if turn22 == 1:
		$"2,2".play("new_animation_1")
		win4 = true
	if turn24 == 1:
		$"2,4".play("new_animation_1")
		win5 = true
	if turn34 == 2:
		$"3,4".play("new_animation_1")
		win6 = true
	if turn35 == 1:
		$"3,5".play("new_animation_1")
		win7 = true
	if turn43 == 1:
		$"4,3".play("new_animation_1")
		win8 = true
	if turn44 == 1:
		$"4,4".play("new_animation_1")
		win9 = true
	if turn52 == 1:
		$"5,2".play("new_animation_1")
		win10 = true
	if turn53 == 2:
		$"5,3".play("new_animation_1")
		win11 = true
	if turn61 == 2:
		$"6,1".play("new_animation_1")
		win12 = true
	if turn62 == 1:
		$"6,2".play("new_animation_1")
		win13 = true
	if turn63 == 1:
		$"6,3".play("new_animation_1")
		win14 = true
	if turn64 == 2:
		$"6,4".play("new_animation_1")
		win15 = true


func _on_timer_timeout() -> void:
	$ColorRect.hide()
	$"1,1".play("new_animation_1")
	$"1,2".play("default")
	$"1,3".play("default")
	$"2,1".play("new_animation_1")
	$"2,2".play("default")
	$"2,3".play("default")
	$"3,1".play("new_animation_1")
	$"3,2".play("new_animation_1")
	$"3,3".play("default")
	$"4,3".play("default")
	$"4,4".play("default")
	$"5,4".play("default")
	$"5,5".play("default")
	$"5,6".play("default")
	$"6,4".play("default")
	$"6,5".play("default")
	$"6,6".play("default")


func _on_button_12_pressed() -> void:
	if turn12 != 2:
		$"1,2".rotate(PI/2)
		turn12 += 1
	else:
		pass


func _on_button_13_pressed() -> void:
	if turn13 != 1:
		$"1,3".rotate(PI/2)
		turn13 += 1
	else:
		pass


func _on_button_14_pressed() -> void:
	if turn14 != 2:
		$"1,4".rotate(PI/2)
		turn14 += 1
	else:
		pass


func _on_button_15_pressed() -> void:
	$"1,5".rotate(PI/2)


func _on_button_16_pressed() -> void:
	$"1,6".rotate(PI/2)


func _on_button_22_pressed() -> void:
	if turn22 != 1:
		$"2,2".rotate(PI/2)
		turn22 += 1
	else:
		pass


func _on_button_23_pressed() -> void:
	$"2,3".rotate(PI/2)


func _on_button_24_pressed() -> void:
	if turn24 != 1:
		$"2,4".rotate(PI/2)
		turn24 += 1
	else:
		pass


func _on_button_26_pressed() -> void:
	$"2,6".rotate(PI/2)


func _on_button_33_pressed() -> void:
	$"3,3".rotate(PI/2)


func _on_button_34_pressed() -> void:
	if turn34 != 2:
		$"3,4".rotate(PI/2)
		turn34 += 1
	else:
		pass


func _on_button_35_pressed() -> void:
	if turn35 != 1:
		$"3,5".rotate(PI/2)
		turn35 += 1
	else:
		pass


func _on_button_36_pressed() -> void:
	$"3,6".rotate(PI/2)


func _on_button_41_pressed() -> void:
	$"4,1".rotate(PI/2)


func _on_button_42_pressed() -> void:
	$"4,2".rotate(PI/2)


func _on_button_43_pressed() -> void:
	if turn43 != 1:
		$"4,3".rotate(PI/2)
		turn43 += 1
	else:
		pass


func _on_button_44_pressed() -> void:
	if turn44 != 1:
		$"4,4".rotate(PI/2)
		turn44 += 1
	else:
		pass


func _on_button_45_pressed() -> void:
	$"4,5".rotate(PI/2)


func _on_button_46_pressed() -> void:
	$"4,6".rotate(PI/2)


func _on_button_52_pressed() -> void:
	if turn52 != 1:
		$"5,2".rotate(PI/2)
		turn52 += 1
	else:
		pass


func _on_button_53_pressed() -> void:
	if turn53 != 2:
		$"5,3".rotate(PI/2)
		turn53 += 1
	else:
		pass


func _on_button_54_pressed() -> void:
	$"5,4".rotate(PI/2)


func _on_button_55_pressed() -> void:
	$"5,5".rotate(PI/2)


func _on_button_56_pressed() -> void:
	$"5,6".rotate(PI/2)


func _on_button_61_pressed() -> void:
	if turn61 != 2:
		$"6,1".rotate(PI/2)
		turn61 += 1
	else:
		pass


func _on_button_62_pressed() -> void:
	if turn62 != 1:
		$"6,2".rotate(PI/2)
		turn62 += 1
	else:
		pass


func _on_button_63_pressed() -> void:
	if turn63 != 1:
		$"6,3".rotate(PI/2)
		turn63 += 1
	else:
		pass


func _on_button_64_pressed() -> void:
	if turn64 != 2:
		$"6,4".rotate(PI/2)
		turn64 += 1
	else:
		pass


func _on_button_65_pressed() -> void:
	$"6,5".rotate(PI/2)


func _on_button_66_pressed() -> void:
	$"6,6".rotate(PI/2)


func _on_button_pressed() -> void:
		get_tree().reload_current_scene()
