extends TextureButton

@export var back_location := "res://Scenes/splash_screen.tscn"


func _on_back_btn_pressed():
	$FadeEffect.fade()
