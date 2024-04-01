extends RichTextLabel
var elud = 100
var salv = 5
var dmg = 10

func _ready():
	pass # Replace with function body.

func _process(_delta):
	if Input.is_action_just_pressed("shoot") && salv>0 && elud>0:
		print("Piupiu")
		salv-=1
		print("Salves:"+str(salv))
		elud-=dmg
		print("Elud: "+str(elud))
		
	if Input.is_action_just_pressed("reload"):
		salv = 5
		print("Laen...")
