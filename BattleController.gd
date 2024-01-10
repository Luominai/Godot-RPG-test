extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	# testing that the function works as intended
	#var attacker = load("res://Enemies/Gorge.tres")
	#var attack = load("res://Attacks/Peck.tres")
	#var defenders = [$Enemies/Enemy]
	#use_attack(attacker, attack, defenders)
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
			
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
