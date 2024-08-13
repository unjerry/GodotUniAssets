extends CanvasLayer

signal new_but

# Called when the node enters the scene tree for the first time.
func _ready():
	$Tittle.hide()
	$Loading.hide()
	hide_but()
	

func hide_but():
	$MultiBut.hide()
	$QuitBut.hide()
	$LoadBut.hide()
	$NewBut.hide()
func show_but():
	$MultiBut.show()
	$QuitBut.show()
	$LoadBut.show()
	$NewBut.show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
	
func _on_new_but_pressed():
	new_but.emit()
	$Tittle.hide()
	$Loading.show()
	await get_tree().create_timer(1).timeout
	$Loading.hide()
	$Tittle.show()
