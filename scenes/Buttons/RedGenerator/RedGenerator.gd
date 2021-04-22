extends TextureButton


func _ready():
	pass # Replace with function body.




func _on_RedGenerator_button_down():
	generate_block()
	pass # Replace with function body.


func generate_block():
	var ins_rojo_chico = load("res://scenes/Blocks/Red/BlockRed.tscn")
