extends Node2D

var playerScore = 0
var enemyScore = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$"player_score".text = "Skoor: "+str(playerScore)
	$"enemy_score".text = "Skoor: "+str(enemyScore)

func game(valik):
	var arvuti_valikud = ["kivi","paber","käärid"]
	var arvuti_valik =  arvuti_valikud[randi() % 3]
	$enemy_choice.text = arvuti_valik
	print("Arvuti valik:" + arvuti_valik)
	print("Kasutaja valik: " + valik)
	
	if arvuti_valik == valik:
		$tulemus.text = "Viik"
	elif valik == "kivi" && arvuti_valik == "paber":
		$tulemus.text = "Arvuti võitis"
		enemyScore+=1
	elif valik == "kivi" && arvuti_valik == "käärid":
		$tulemus.text = "Kasutaja võitis"
		playerScore+=1
	elif valik == "paber" && arvuti_valik == "kivi":
		$tulemus.text = "Kasutaja võitis"
		playerScore+=1
	elif valik == "paber" && arvuti_valik == "käärid":
		$tulemus.text = "Arvuti võitis"
		enemyScore+=1
	elif valik == "käärid" && arvuti_valik == "kivi":
		$tulemus.text = "Arvuti võitis"
		enemyScore+=1
	elif valik == "käärid" && arvuti_valik == "paber":
		$tulemus.text = "Kasutaja võitis"
		playerScore+=1
	
	if enemyScore>=5 || playerScore>=5:
		if enemyScore > playerScore:
			$tulemus.text = "Game Over \n You Loose"
			print("Game over")
			print("YOU LOOSE")
		else:
			$tulemus.text = "Game Over \n You Win"
			print("GAME OVER")
			print("YOU WON")
		$"player_score".text = "Skoor: "+str(playerScore)
		$"enemy_score".text = "Skoor: "+str(enemyScore)
		get_tree().paused = true
	

func _on_new_game_pressed():
	$tulemus.text = "Uus mäng"
	get_tree().reload_current_scene()

func _on_kivi_pressed():
	$"player_choice".text = "KIVI"
	game("kivi")

func _on_paber_pressed():
	$"player_choice".text = "PABER"
	game("paber")

func _on_kaarid_pressed():
	$"player_choice".text = "KÄÄRID"
	game("käärid")
