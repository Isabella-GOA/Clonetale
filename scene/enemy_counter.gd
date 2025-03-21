extends Control

var count = 0
@onready var label = $Label

func _ready():
	update_label()

func increase_count():
	count += 1
	update_label()

func update_label():
	label.text = "NPCs Removed: %d" % count
