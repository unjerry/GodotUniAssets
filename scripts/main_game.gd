extends Node


func start_game():
	$MainFarm.show()
	$Player.show()
	print("start_game")

func _input(_event):
	if Input.is_action_just_pressed("Menue"):
		if $StartMenue.visible:
			$StartMenue.hide()
		else:
			$StartMenue.show()
# Called when the node enters the scene tree for the first time.
func _ready():
	$StartMenue.show_but()
	$StartMenue/Tittle.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
