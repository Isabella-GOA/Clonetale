extends Node2D

const MAX_ENEMIES = 10
var enemies = []
var rng = RandomNumberGenerator.new()

@onready var enemy_counter = get_tree().get_first_node_in_group("enemy_counter")

func _ready():
	rng.randomize()
	_start_cloning()

func _start_cloning():
	await get_tree().create_timer(3.0).timeout
	if enemies.size() < MAX_ENEMIES:
		_spawn_enemy()
	_start_cloning()

func _spawn_enemy():
	var new_enemy = preload("res://enemy/Enemy.tscn").instantiate()
	new_enemy.global_position = Vector2(rng.randi_range(100, 500), rng.randi_range(100, 500))
	enemies.append(new_enemy)
	add_child(new_enemy)

func remove_enemy(enemy):
	enemies.erase(enemy)
	if enemy_counter:
		enemy_counter.increase_count()
