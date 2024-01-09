extends VBoxContainer

@export var data : Character

# Called when the node enters the scene tree for the first time.
func _ready():
	var health = $health as Label
	health.text = "Health: " + str(data.health)
	var attack = $attack as Label
	attack.text = "Attack: " + str(data.attack)
	var defense = $defense as Label
	defense.text = "Defense: " + str(data.defense)
	
	var gorge = $TextureRect as TextureRect
	gorge.texture = data.texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
