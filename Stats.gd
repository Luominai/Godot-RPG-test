extends VBoxContainer

@export var data : Character

# Called when the node enters the scene tree for the first time.
func _ready():
	var progress_bar = $ProgressBar as ProgressBar
	progress_bar.value = data.health
	progress_bar.max_value = data.health
	
	var health = $ProgressBar/health as Label
	health.text = "%s/%s" % [str(data.health), str(data.health)]
	
	var attack = $attackContainer/attack as Label
	attack.text = str(data.attack)
	var defense = $defenseContainer/defense as Label
	defense.text = str(data.defense)
	
	var gorge = $TextureRect as TextureRect
	gorge.texture = data.texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
