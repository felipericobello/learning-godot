extends Control

@onready var view_rect = get_viewport_rect()
@onready var rect = TextureRect.new()
var b_pressed = [false, false, false]

# Called when the node enters the scene tree for the first time.
func _ready():
	_set_size(view_rect.size)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_1_focus_entered():
	if !b_pressed[0]:
		
		rect.texture = load("res://Assets/sqr.png")
		rect.anchor_left = 0.5
		rect.anchor_right = 0.5
		rect.anchor_bottom = 0.5
		rect.anchor_top = 0.5
		
		var texture_size = rect.texture.get_size()
		rect.offset_left = -texture_size.x / 2
		rect.offset_right = texture_size.x / 2
		rect.offset_top = -texture_size.y / 2
		rect.offset_bottom = texture_size.y / 2

		add_child(rect)
		b_pressed[0] = true

func _on_button_1_focus_exited():
	if b_pressed[0]:
		rect.free()
		rect = TextureRect.new()
		b_pressed[0] = false
