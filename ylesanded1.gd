extends Node2D

var PlayerName = "Tyyp"
var life = 20


func _ready():
	print("Nimi: ",PlayerName," Elud: ",life)
	print("Nime pikkus: ", len(PlayerName)," märki")
	life+=2
	print("Nimi: ",PlayerName," Elud: ",life)
	print(randi() % 19)
