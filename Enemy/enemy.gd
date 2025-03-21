extends CharacterBody2D

@onready var sprite = $AnimatedSprite2D
@onready var collision_shape = $CollisionShape2D
var rng = RandomNumberGenerator.new()
const SPEED := 50.0
var direction := Vector2.ZERO
var is_walking := false
var enemy_manager

func _ready():
	enemy_manager = get_tree().get_first_node_in_group("enemy_manager")
	rng.randomize()
	set_process_input(true)  # 允许鼠标输入
	set_deferred("input_ray_pickable", true)  # 允许 NPC 可点击
	if collision_shape:
		collision_shape.set_deferred("input_pickable", true)  # 让碰撞体可检测鼠标输入
	_choose_new_behavior()

func _physics_process(delta):
	if is_walking:
		velocity = direction * SPEED
		move_and_slide()
		_update_animation()
	else:
		sprite.play("idle")

func _choose_new_behavior():
	var choices = ["walk", "idle"]
	var action = choices[rng.randi_range(0, 1)]
	if action == "walk":
		_choose_new_direction()
	else:
		is_walking = false
	await get_tree().create_timer(rng.randf_range(2.0, 4.0)).timeout
	_choose_new_behavior()

func _choose_new_direction():
	var dirs = [Vector2.UP, Vector2.DOWN, Vector2.LEFT, Vector2.RIGHT]
	direction = dirs[rng.randi_range(0, dirs.size() - 1)]
	is_walking = true

func _update_animation():
	if direction.x > 0:
		sprite.flip_h = false
		sprite.play("run")
	elif direction.x < 0:
		sprite.flip_h = true
		sprite.play("run")
	elif direction.y != 0:
		sprite.play("run")

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		print("NPC clicked!")  # Debug 信息
		if enemy_manager:
			enemy_manager.remove_enemy(self)
		queue_free()
