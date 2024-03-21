extends Node2D

var enemy = 100
var me = 100

func _ready():
	while enemy>0 && me>0:
		var dmg = randi() % 8 + 8 # dmg 8-15
		var Edmg = randi() % 8 + 10
		enemy -= dmg
		me -= Edmg
		print("Player Hit: ", dmg, " Enemy Life: ", enemy)
		print("Enemy Hit: ", Edmg, " Player Life: ", me)
		
	if me>enemy:
		print("GAME OVER - You Win!")
	else:
		print("GAME OVER - You Loose!")

