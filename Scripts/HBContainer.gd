extends HBoxContainer

@onready var view_rect = get_viewport_rect()
@onready var Button1 = $Button1
@onready var Button2 = $Button2
@onready var Button3 = $Button3

@onready var L_Shop = $Button1/Shop
@onready var L_Campaign = $Button2/Campaign
@onready var L_Heroes = $Button3/Heroes

var highlighted
var notselected

# Called when the node enters the scene tree for the first time.
func _ready():
	highlighted = view_rect.size.y*0.10
	notselected = view_rect.size.y*0.05
	
	
	Button1.set_custom_minimum_size(Vector2(0, notselected))
	Button2.set_custom_minimum_size(Vector2(0, notselected))
	Button3.set_custom_minimum_size(Vector2(0, notselected))
	
	
	var rect_LSHOP = L_Shop.get_rect()
	var rect_LC = L_Campaign.get_rect()
	var rect_LH = L_Heroes.get_rect()
	
	var SH_font_scale = (notselected/rect_LSHOP.size.y)
	var C_font_scale = (notselected/rect_LC.size.y)
	var H_font_scale = (notselected/rect_LH.size.y)
	var default_font = get_theme_default_font_size()
	
	L_Shop.set_custom_minimum_size(Vector2(rect_LSHOP.size.x*SH_font_scale, rect_LSHOP.size.y*SH_font_scale))
	L_Shop.add_theme_font_size_override("font_size", default_font*SH_font_scale)
	
	L_Campaign.set_custom_minimum_size(Vector2(rect_LC.size.x*C_font_scale, rect_LC.size.y*C_font_scale))
	L_Campaign.add_theme_font_size_override("font_size", default_font*C_font_scale)
	
	L_Heroes.set_custom_minimum_size(Vector2(rect_LH.size.x*H_font_scale, rect_LH.size.y*H_font_scale))
	L_Heroes.add_theme_font_size_override("font_size", default_font*H_font_scale)
	
	
	Button1.focus_entered.connect(self._on_focus1)
	Button1.focus_exited.connect(self._out_focus1)

	Button2.focus_entered.connect(self._on_focus2)
	Button2.focus_exited.connect(self._out_focus2)
	
	Button3.focus_entered.connect(self._on_focus3)
	Button3.focus_exited.connect(self._out_focus3)
	
	Button2.grab_focus()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_focus1():
	Button1.set_custom_minimum_size(Vector2(0, highlighted))
func _out_focus1():
	Button1.set_custom_minimum_size(Vector2(0, notselected))
	
func _on_focus2():
	Button2.set_custom_minimum_size(Vector2(0, highlighted))
func _out_focus2():
	Button2.set_custom_minimum_size(Vector2(0, notselected))
	
func _on_focus3():
	Button3.set_custom_minimum_size(Vector2(0, highlighted))
func _out_focus3():
	Button3.set_custom_minimum_size(Vector2(0, notselected))
