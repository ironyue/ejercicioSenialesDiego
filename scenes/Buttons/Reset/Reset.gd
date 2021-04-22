extends TextureButton


func _ready():
	pass 



func _on_Reset_button_down():
	get_tree().call_group("blocks" , "delete")
	pass # Replace with function body.
