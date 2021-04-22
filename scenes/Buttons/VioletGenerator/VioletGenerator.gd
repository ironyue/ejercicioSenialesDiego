extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func generate_block():
	var ins_rojo_chico = preload("res://scenes/Blocks/Red/BlockRed.tscn")


func _on_VioletGenerator_button_down():
	generate_block()
	pass # Replace with function body.
