extends CanvasLayer

func _ready():
	$FadeEffect.color = Color.BLACK
	
	var tween = create_tween()
	tween.tween_property($FadeEffect, "color", Color.TRANSPARENT, 1)
