extends CanvasLayer


func fade():
	var tween = create_tween()
	tween.tween_property($FadeEffect, "color", Color.BLACK, 1)
	tween.tween_callback(get_tree().change_scene.bind(get_parent().back_location))
