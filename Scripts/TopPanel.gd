extends Panel

@onready var view_rect = get_viewport_rect()


# Called when the node enters the scene tree for the first time.
func _ready():
	self.size.y = view_rect.size.y*0.04
	var gl = $GoldLabel.get_rect()
	var bl = $BlueLabel.get_rect()
	var dl = $DiamondLabel.get_rect()
	
	var font_scale = (size.y/gl.size.y)
	
	$GoldLabel.set_custom_minimum_size(Vector2(gl.size.x*font_scale, gl.size.y*font_scale))
	$GoldLabel.add_theme_font_size_override("font_size", 12*font_scale)
	
	$BlueLabel.set_custom_minimum_size(Vector2(bl.size.x*font_scale, bl.size.y*font_scale))
	$BlueLabel.add_theme_font_size_override("font_size", 12*font_scale)
	
	$DiamondLabel.set_custom_minimum_size(Vector2(dl.size.x*font_scale, dl.size.y*font_scale))
	$DiamondLabel.add_theme_font_size_override("font_size", 12*font_scale)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
