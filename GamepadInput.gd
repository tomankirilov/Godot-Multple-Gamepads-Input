#PlayerInput class: 
extends Node
class_name GamepadInput

export (int) var ID = 0
export var deadzone:float = 0.1

enum STATE {
	JUST_PRESSED,
	PRESSED,
	JUST_RELEASED,
	RELEASED,
	}

var left_stick  :Vector2
var right_stick :Vector2
var _btn_a       :bool
var _btn_b       :bool
var _btn_x       :bool
var _btn_y       :bool
var _btn_lb      :bool
var _btn_rb      :bool
var _btn_lt      :bool
var _btn_rt      :bool
var _dpad_left   :bool
var _dpad_right  :bool
var _dpad_up     :bool
var _dpad_down   :bool
var _btn_start   :bool
var _btn_back    :bool

var btn_a_state      = STATE.RELEASED
var btn_b_state      = STATE.RELEASED
var btn_x_state      = STATE.RELEASED
var btn_y_state      = STATE.RELEASED
var btn_lb_state     = STATE.RELEASED
var btn_rb_state     = STATE.RELEASED
var btn_lt_state     = STATE.RELEASED
var btn_rt_state     = STATE.RELEASED
var dpad_left_state  = STATE.RELEASED
var dpad_right_state = STATE.RELEASED
var dpad_up_state    = STATE.RELEASED
var dpad_down_state  = STATE.RELEASED
var btn_start_state  = STATE.RELEASED
var btn_back_state   = STATE.RELEASED

# warning-ignore-all:unused_argument
func _process(delta) -> void:
####### BUTTON A:
	if Input.is_joy_button_pressed(ID, 0) == _btn_a:
		if Input.is_joy_button_pressed(ID, 0):
			btn_a_state = STATE.PRESSED
			_btn_a = Input.is_joy_button_pressed(ID, 0)
		else:
			btn_a_state = STATE.RELEASED
			_btn_a = Input.is_joy_button_pressed(ID, 0)
	else:
		if Input.is_joy_button_pressed(ID, 0):
			btn_a_state = STATE.JUST_PRESSED
			_btn_a = Input.is_joy_button_pressed(ID, 0)
		else:
			btn_a_state = STATE.JUST_RELEASED
			_btn_a = Input.is_joy_button_pressed(ID, 0)

####### BUTTON B:
	if Input.is_joy_button_pressed(ID, 1) == _btn_b:  
		if Input.is_joy_button_pressed(ID, 1):
			btn_b_state = STATE.PRESSED
			_btn_b = Input.is_joy_button_pressed(ID, 1)
		else:
			btn_b_state = STATE.RELEASED
			_btn_b = Input.is_joy_button_pressed(ID, 1)
	else:
		if Input.is_joy_button_pressed(ID, 1):
			btn_b_state = STATE.JUST_PRESSED
			_btn_b = Input.is_joy_button_pressed(ID, 1)
		else:
			btn_b_state = STATE.JUST_RELEASED
			_btn_b = Input.is_joy_button_pressed(ID, 1)

####### BUTTON X:
	if Input.is_joy_button_pressed(ID, 2) == _btn_x:  
		if Input.is_joy_button_pressed(ID, 2):
			btn_x_state = STATE.PRESSED
			_btn_x = Input.is_joy_button_pressed(ID, 2)
		else:
			btn_x_state = STATE.RELEASED
			_btn_x = Input.is_joy_button_pressed(ID, 2)
	else:
		if Input.is_joy_button_pressed(ID, 2):
			btn_x_state = STATE.JUST_PRESSED
			_btn_x = Input.is_joy_button_pressed(ID, 2)
		else:
			btn_x_state = STATE.JUST_RELEASED
			_btn_x = Input.is_joy_button_pressed(ID, 2)

####### BUTTON Y:
	if Input.is_joy_button_pressed(ID, 3) == _btn_y:  
		if Input.is_joy_button_pressed(ID, 3):
			btn_y_state = STATE.PRESSED
			_btn_y = Input.is_joy_button_pressed(ID, 3)
		else:
			btn_y_state = STATE.RELEASED
			_btn_y = Input.is_joy_button_pressed(ID, 3)
	else:
		if Input.is_joy_button_pressed(ID, 3):
			btn_y_state = STATE.JUST_PRESSED
			_btn_y = Input.is_joy_button_pressed(ID, 3)
		else:
			btn_y_state = STATE.JUST_RELEASED
			_btn_y = Input.is_joy_button_pressed(ID, 3)

####### BUTTON LB:
	if Input.is_joy_button_pressed(ID, 4) == _btn_lb:  
		if Input.is_joy_button_pressed(ID, 4):
			btn_lb_state = STATE.PRESSED
			_btn_lb = Input.is_joy_button_pressed(ID, 4)
		else:
			btn_lb_state = STATE.RELEASED
			_btn_lb = Input.is_joy_button_pressed(ID, 4)
	else:
		if Input.is_joy_button_pressed(ID, 4):
			btn_lb_state = STATE.JUST_PRESSED
			_btn_lb = Input.is_joy_button_pressed(ID, 4)
		else:
			btn_lb_state = STATE.JUST_RELEASED
			_btn_lb = Input.is_joy_button_pressed(ID, 4)

####### BUTTON RB:
	if Input.is_joy_button_pressed(ID, 6) == _btn_rb:  
		if Input.is_joy_button_pressed(ID, 6):
			btn_rb_state = STATE.PRESSED
			_btn_rb = Input.is_joy_button_pressed(ID, 6)
		else:
			btn_rb_state = STATE.RELEASED
			_btn_rb = Input.is_joy_button_pressed(ID, 6)
	else:
		if Input.is_joy_button_pressed(ID, 6):
			btn_rb_state = STATE.JUST_PRESSED
			_btn_rb = Input.is_joy_button_pressed(ID, 6)
		else:
			btn_rb_state = STATE.JUST_RELEASED
			_btn_rb = Input.is_joy_button_pressed(ID, 6)

####### BUTTON LT:
	if Input.is_joy_button_pressed(ID, 7) == _btn_lt:  
		if Input.is_joy_button_pressed(ID, 7):
			btn_lt_state = STATE.PRESSED
			_btn_lt = Input.is_joy_button_pressed(ID, 7)
		else:
			btn_lt_state = STATE.RELEASED
			_btn_lt = Input.is_joy_button_pressed(ID, 7)
	else:
		if Input.is_joy_button_pressed(ID, 7):
			btn_lt_state = STATE.JUST_PRESSED
			_btn_lt = Input.is_joy_button_pressed(ID, 7)
		else:
			btn_lt_state = STATE.JUST_RELEASED
			_btn_lt = Input.is_joy_button_pressed(ID, 7)

####### BUTTON RT:
	if Input.is_joy_button_pressed(ID, 4) == _btn_rt:  
		if Input.is_joy_button_pressed(ID, 4):
			btn_rt_state = STATE.PRESSED
			_btn_rt = Input.is_joy_button_pressed(ID, 4)
		else:
			btn_rt_state = STATE.RELEASED
			_btn_rt = Input.is_joy_button_pressed(ID, 4)
	else:
		if Input.is_joy_button_pressed(ID, 4):
			btn_rt_state = STATE.JUST_PRESSED
			_btn_rt = Input.is_joy_button_pressed(ID, 4)
		else:
			btn_rt_state = STATE.JUST_RELEASED
			_btn_rt = Input.is_joy_button_pressed(ID, 4)

####### DPAD LEFT:
	if Input.is_joy_button_pressed(ID, 4) == _dpad_left:  
		if Input.is_joy_button_pressed(ID, 4):
			dpad_left_state = STATE.PRESSED
			_dpad_left = Input.is_joy_button_pressed(ID, 4)
		else:
			dpad_left_state = STATE.RELEASED
			_dpad_left = Input.is_joy_button_pressed(ID, 4)
	else:
		if Input.is_joy_button_pressed(ID, 4):
			dpad_left_state = STATE.JUST_PRESSED
			_dpad_left = Input.is_joy_button_pressed(ID, 4)
		else:
			dpad_left_state = STATE.JUST_RELEASED
			_dpad_left = Input.is_joy_button_pressed(ID, 4)

####### DPAD LEFT:
	if Input.is_joy_button_pressed(ID, 4) == _dpad_right:  
		if Input.is_joy_button_pressed(ID, 4):
			dpad_right_state = STATE.PRESSED
			_dpad_right = Input.is_joy_button_pressed(ID, 4)
		else:
			dpad_right_state = STATE.RELEASED
			_dpad_right = Input.is_joy_button_pressed(ID, 4)
	else:
		if Input.is_joy_button_pressed(ID, 4):
			dpad_right_state = STATE.JUST_PRESSED
			_dpad_right = Input.is_joy_button_pressed(ID, 4)
		else:
			dpad_right_state = STATE.JUST_RELEASED
			_dpad_right = Input.is_joy_button_pressed(ID, 4)

####### DPAD UP:
	if Input.is_joy_button_pressed(ID, 4) == _dpad_up:  
		if Input.is_joy_button_pressed(ID, 4):
			dpad_up_state = STATE.PRESSED
			_dpad_up = Input.is_joy_button_pressed(ID, 4)
		else:
			dpad_up_state = STATE.RELEASED
			_dpad_up = Input.is_joy_button_pressed(ID, 4)
	else:
		if Input.is_joy_button_pressed(ID, 4):
			dpad_up_state = STATE.JUST_PRESSED
			_dpad_up = Input.is_joy_button_pressed(ID, 4)
		else:
			dpad_up_state = STATE.JUST_RELEASED
			_dpad_up = Input.is_joy_button_pressed(ID, 4)

####### DPAD DOWN:
	if Input.is_joy_button_pressed(ID, 4) == _dpad_down:  
		if Input.is_joy_button_pressed(ID, 4):
			dpad_down_state = STATE.PRESSED
			_dpad_down = Input.is_joy_button_pressed(ID, 4)
		else:
			dpad_down_state = STATE.RELEASED
			_dpad_down = Input.is_joy_button_pressed(ID, 4)
	else:
		if Input.is_joy_button_pressed(ID, 4):
			dpad_down_state = STATE.JUST_PRESSED
			_dpad_down = Input.is_joy_button_pressed(ID, 4)
		else:
			dpad_down_state = STATE.JUST_RELEASED
			_dpad_down = Input.is_joy_button_pressed(ID, 4)

####### START BUTTON:
	if Input.is_joy_button_pressed(ID, 4) == _btn_start:  
		if Input.is_joy_button_pressed(ID, 4):
			btn_start_state = STATE.PRESSED
			_btn_start = Input.is_joy_button_pressed(ID, 4)
		else:
			btn_start_state = STATE.RELEASED
			_btn_start = Input.is_joy_button_pressed(ID, 4)
	else:
		if Input.is_joy_button_pressed(ID, 4):
			btn_start_state = STATE.JUST_PRESSED
			_btn_start = Input.is_joy_button_pressed(ID, 4)
		else:
			btn_start_state = STATE.JUST_RELEASED
			_btn_start = Input.is_joy_button_pressed(ID, 4)

####### BACK BUTTON:
	if Input.is_joy_button_pressed(ID, 4) == _btn_back:  
		if Input.is_joy_button_pressed(ID, 4):
			btn_back_state = STATE.PRESSED
			_btn_back = Input.is_joy_button_pressed(ID, 4)
		else:
			btn_back_state = STATE.RELEASED
			_btn_back = Input.is_joy_button_pressed(ID, 4)
	else:
		if Input.is_joy_button_pressed(ID, 4):
			btn_back_state = STATE.JUST_PRESSED
			_btn_back = Input.is_joy_button_pressed(ID, 4)
		else:
			btn_back_state = STATE.JUST_RELEASED
			_btn_back = Input.is_joy_button_pressed(ID, 4)

####### LEFT STICK:
	if Vector2(Input.get_joy_axis(ID, 0), Input.get_joy_axis(ID, 1)).length() > deadzone:
		left_stick = Vector3(Input.get_joy_axis(ID, 0), 0,  Input.get_joy_axis(ID, 1))
	else:
		left_stick = Vector2.ZERO
####### RIGHT STICK:
	if Vector2(Input.get_joy_axis(ID, 2), Input.get_joy_axis(ID, 3)).length() > deadzone:
		right_stick = Vector3(Input.get_joy_axis(ID, 2), 0,  Input.get_joy_axis(ID, 3))
	else:
		right_stick = Vector2.ZERO
