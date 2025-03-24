extends Area2D

signal death
func _on_body_entered(body: Node2D) -> void:
	#print(body.name)
	if body.name == 'Player':
		print('work')
		emit_signal('death')
