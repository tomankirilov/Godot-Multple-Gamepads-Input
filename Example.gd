extends Node
#JUST A BASIC EXAMPLE OF USAGE.

onready var input:GamepadInput = get_node("GamepadInput")

func _ready() -> void:
	input.ID = 0 #The gamepad to read input from
	input.deadzone = 0.2 #Deadzone for the thumbsticks


func _process(delta) -> void:
	if input.left_stick:
		#Returns a normalized Vector2
    		pass
	if input.right_stick:
		#Returns a normalized Vector2
		pass

  if input.btn_a_state == input.STATE.JUST_PRESSED:
    #DO STUFF:
    pass
  if input.btn_a_state == input.STATE.PRESSED:
    #DO STUFF:
    pass
