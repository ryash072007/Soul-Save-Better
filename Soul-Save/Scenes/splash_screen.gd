extends Node2D

@onready var playBtn
@onready var optionBtn
@onready var creditBtn

var font_tween_size: int = 50
var normal_font_size

var hovering_tween_time: float = 0.05
var not_hovering_tween_time: float = 0.05


var fontPath := "theme_override_font_sizes/font_size"


func _ready():
	$Canvas/FadeEffect.color = Color.BLACK
	
	playBtn = get_node("VBoxContainer/playBtn")
	optionBtn = get_node("VBoxContainer/optionBtn")
	creditBtn = get_node("VBoxContainer/creditBtn")
	
	normal_font_size = playBtn.get("theme_override_font_sizes/font_size")
	
	_fade_effect_entry()


func _playBtn_hovered():
	var hover_tween = create_tween()
	hover_tween.tween_property(playBtn, fontPath, font_tween_size, hovering_tween_time)


func _playBtn_not_hovered():
	var hover_tween = create_tween()
	hover_tween.tween_property(playBtn, fontPath, normal_font_size, not_hovering_tween_time)


func _on_option_btn_mouse_entered():
	var hover_tween = create_tween()
	hover_tween.tween_property(optionBtn, fontPath, font_tween_size, hovering_tween_time)


func _on_option_btn_mouse_exited():
	var hover_tween = create_tween()
	hover_tween.tween_property(optionBtn, fontPath, normal_font_size, not_hovering_tween_time)


func _on_credit_btn_mouse_entered():
	var hover_tween = create_tween()
	hover_tween.tween_property(creditBtn, fontPath, font_tween_size, hovering_tween_time)


func _on_credit_btn_mouse_exited():
	var hover_tween = create_tween()
	hover_tween.tween_property(creditBtn, fontPath, normal_font_size, not_hovering_tween_time)


func _fade_effect_entry():
	var tween = create_tween()
	tween.tween_property($Canvas/FadeEffect, "color", Color.TRANSPARENT, 2)


func _on_play_btn_pressed():
	var tween = create_tween()
	AudioManager.click()
	tween.tween_property($Canvas/FadeEffect, "color", Color.BLACK, 1)
	tween.tween_callback(get_tree().change_scene.bind("res://Levels/level_1.tscn"))


func _on_credit_btn_pressed():
	var tween = create_tween()
	AudioManager.click()
	tween.tween_property($Canvas/FadeEffect, "color", Color.BLACK, 1)
	tween.tween_callback(get_tree().change_scene.bind("res://Scenes/credit.tscn"))
