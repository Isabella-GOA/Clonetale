extends Control

var count = 0
@onready var label = $Label

func _ready():
	update_label()

func update_label():
	label.text = "NPCs Removed: %d" % count

func _on_enemy_manager_increase_count() -> void:
	count += 1
	print(count)
	update_label()
