# Multiple gamepads support for the Godot Game Engine.

A simple class for managing multiple gamepads for your game.
Just add a an instance of the class for each player and give it an ID.
It is quite simple to use.

### Variables:
 * ID -> The gamepad it will read input from. Can be changed on the fly.
 * deadzone -> deadzone for the thumbsticks.

### Axis:
 * left_stick  -> Returns a normalized Vector2 of the left thumbstick
 * right_stick -> Returns a normalized Vector2 of the right thumbstick

### Buttons:
 * btn_a_state
 * btn_b_state
 * btn_x_state
 * btn_y_state
 * btn_lb_state
 * btn_rb_state
 * btn_lt_state
 * btn_rt_state
 * dpad_left_state
 * dpad_right_state
 * dpad_up_state
 * dpad_down_state
 * btn_start_state
 * btn_back_state

### States:
 * STATE.JUST_PRESSED
 * STATE.JUST_RELEASED
 * STATE.PRESSED
 * STATE.RELEASED
 
### Example:
```
onready var input = get_node("GamepadInput")

func _ready() -> void:
  input.ID = 0
  input.deadzone = 0.25

func _process(delta) -> void:
  if input.left_stick:
    move(input.left_stick * delta)
  if input.right_stick:
    aim(input.right_stick * delta)
  
  if input.btn_a_state == input.STATE.JUST_PRESSED:
    jump(5)
  if input.btn_a_state == input.STATE.JUST_RELEASED:
    stop_jumping()

  if input.btn_x_state == input.STATE.PRESSED:
    shoot() 
