extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0
var bloqueRojo = load("res://scenes/Blocks/Red/BlockRed.tscn")
var bloqueVioleta = load("res://scenes/Blocks/Violet/BlockViolet.tscn")
var reset = load("res://scenes/Buttons/Reset/Reset.tscn")

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + String(instancesCount)
	$RedGenerator.connect("button_down" , self , "count_new_instanceR")
	$VioletGenerator.connect("button_down" , self , "count_new_instanceV")
	$Reset.connect("button_down", self , "_delete")
	

func count_new_instanceR():
	if Input.is_action_pressed("left_click"):
		instancesCount += 1
		$CountLabel.text = "Cantidad de instancias: " + String (instancesCount)
		var blockeNuevoRojo = bloqueRojo.instance()
		add_child(blockeNuevoRojo)
		blockeNuevoRojo.position = get_tree().root.get_mouse_position()

func count_new_instanceV():
	if Input.is_action_just_pressed("left_click"):
		instancesCount += 1
		$CountLabel.text = "Cantidad de instancias: " + String (instancesCount)
		var blockeNuevoVioelta = bloqueVioleta.instance();
		add_child(blockeNuevoVioelta)
		blockeNuevoVioelta.position = get_tree().root.get_mouse_position()

