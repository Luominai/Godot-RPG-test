extends Container


# Called when the node enters the scene tree for the first time.
func _ready():
	var welcome = $TextTesting as Label
	welcome.text = "Hello Adventurer, are you ready to start a journey where the grass is really greener."


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
