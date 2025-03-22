extends Node2D


func _on_tempsceneswitchbut_pressed() -> void:
	$pipepuzzle.show()
	$Enemy3.hide()
	$Player.hide()
	$EnemyCounter.hide()
	$EnemyManager.hide()
