extends Node2D

var count = 0
var wincon = 20
@onready var label = $"pipe access"


func update_label():
	label.text = """Defeat %d
	Enemies
	to access
	pipeing""" % wincon

func _on_enemy_manager_increase_count() -> void:
	count += 1
	wincon -= 1
	update_label()


func _process(delta: float) -> void:
	if count >= 20:
		$Area2D.show()
		label.text = "Get to the hole 
		in the wall to 
		stop the facility"


func _on_area_2d_body_entered(body: Node2D) -> void:
	$pipepuzzle.show()
	$Player.hide()
	$EnemyCounter.hide()
	$EnemyManager.hide()


func _on_button_pressed() -> void:
	$Label2.hide()


func _on_button_2_pressed() -> void:
	$EnemyCounter.hide()
	$EnemyManager.hide()
	$"Level 1".hide()
	%Player.hide()
	$Enemy3.hide()
	$Label2/Button.hide()
	$Label2/Button2.hide()
	$Label2/Label.hide()
	
	$Label2/credits.show()
	$Label2/return.show()
