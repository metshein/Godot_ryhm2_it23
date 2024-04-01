extends Node2D
var playerScore = 0
var enemyScore = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"player_score".text = "Skoor: "+str(playerScore)
	$"enemy_score".text = "Skoor: "+str(enemyScore)

func game(valik):
	var arvuti_valikud = ["kivi","paber","käärid"]
	print("Arvuti valik:" + arvuti_valikud[randi() % arvuti_valikud.size()])
	print("Kasutaja valik: "+valik)

func _on_new_game_pressed():
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
