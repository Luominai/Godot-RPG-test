extends MarginContainer

@export var data : Character

# Called when the node enters the scene tree for the first time.
func _ready():
	var progress_bar = $VBoxContainer/ProgressBar as ProgressBar
	progress_bar.value = data.health
	progress_bar.max_value = data.health
	
	var label = $VBoxContainer/ProgressBar/Label as Label
	label.text = "%s/%s" % [str(data.health), str(data.health)]
	
	var texture_rect = $VBoxContainer/TextureRect
	texture_rect.texture = data.texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
