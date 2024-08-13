extends CharacterBody2D


const SPEED = 130.0

func _ready():
	hide()
	
func _process(delta):
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	
	if direction == Vector2(0,0):
		$AnimatedSprite2D.play("idel")
	else:
		$AnimatedSprite2D.play("run")
	if direction.x < 0:
		$AnimatedSprite2D.flip_h=true
	elif direction.x > 0:
		$AnimatedSprite2D.flip_h=false
	
	self.position += direction.normalized() * SPEED * delta
