extends Node
#JUST A BASIC EXAMPLE OF USAGE.

onready var input:GamepadInput = get_node("GamepadInput")

func _process(delta) -> void:
	if input.left_stick:
		#DO STUFF:
    pass

  if input.btn_a_state == input.STATE.JUST_PRESSED:
    #DO STUFF:
    pass
  if input.btn_a_state == input.STATE.PRESSED:
    #DO STUFF:
    pass
