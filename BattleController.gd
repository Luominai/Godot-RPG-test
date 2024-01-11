extends Control

@export var enemies : Node
@export var actions : Node

var selected_attacker : Character
var selected_attack : Attack
var selected_defender : Array

# Called when the node enters the scene tree for the first time.
func _ready():
	connect_enemy_selector_signals()
	pass # Replace with function body.
	
func deal_damage(health_bar : ProgressBar, damage : int):
	health_bar.value -= damage
	health_bar.get_node("Label").text = "%s/%s" % [health_bar.value, health_bar.max_value]
	
func use_attack(attacker : Character, attack : Attack, defenders : Array):
	for defender in defenders:
		var health_bar = defender.get_node("VBoxContainer/ProgressBar") as ProgressBar
		var defender_stats = defender.data as Character
		var damage = (attacker.attack * attack.damage_multiplier - defender_stats.defense)
		for i in range(0, attack.hits):
			print(attacker.name + " attacks " + defender_stats.name + " using " + attack.name + " for " + str(damage) + " damage")
			deal_damage(health_bar, damage)
			
	
func connect_enemy_selector_signals():
	for enemy in enemies.get_children():
		# make it so when the enemy nodes are clicked, they emit a signal containing their node
		var button = enemy.get_node("Button") as Button
		button.disabled = true
		button.pressed.connect(_on_enemy_selected.bind(enemy))
		
func _on_enemy_selected(enemy):
	selected_defender = [enemy]
	print(selected_defender)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
