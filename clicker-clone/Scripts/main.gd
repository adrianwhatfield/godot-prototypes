extends Control

@onready var coins_label = $MainMargin/VBoxContainer/StatsContainer/CoinsLabel
@onready var info = $MainMargin/VBoxContainer/StatsContainer/Stage/Info
@onready var progress_to_next = $MainMargin/VBoxContainer/StatsContainer/Stage/ProgressToNext
@onready var stats_label = $MainMargin/VBoxContainer/ClickablesContainer/ScrollContainer/Upgrades/StatsLabel
@onready var enemy_texture = $MainMargin/VBoxContainer/ClickablesContainer/Enemy/EnemyTexture
@onready var health_bar = $MainMargin/VBoxContainer/ClickablesContainer/Enemy/HealthBar

var reward: int

func _process(delta):
	coins_label.text = str(PlayerStats.coins) + " coins"
	stats_label.text = str(PlayerStats.dps) + " dps"
	info.text = "Stage " + str(PlayerStats.stage)
	progress_to_next.value = PlayerStats.enemies_this_stage
	
	match PlayerStats.stage:
		1:
			health_bar.max_value = EnemyStats.stage_one
		2:
			health_bar.max_value = EnemyStats.stage_two
		3:
			health_bar.max_value = EnemyStats.stage_three
		4:
			health_bar.max_value = EnemyStats.stage_four
		5:
			health_bar.max_value = EnemyStats.stage_five
	
	if health_bar.value <= 0:
		PlayerStats.enemies_this_stage += 1
		calculate_reward()
		PlayerStats.coins += reward
		set_full_health()

func _ready():
	set_full_health()

func calculate_reward():
	reward = 5 * PlayerStats.stage

func set_full_health():
	match PlayerStats.stage:
		1:
			health_bar.value = EnemyStats.stage_one
		2:
			health_bar.value = EnemyStats.stage_two
		3:
			health_bar.value = EnemyStats.stage_three
		4:
			health_bar.value = EnemyStats.stage_four
		5:
			health_bar.value = EnemyStats.stage_five

func _on_enemy_attack_button_pressed():
	health_bar.value -= 1

func _on_tick_timer_timeout():
	health_bar.value -= PlayerStats.dps
