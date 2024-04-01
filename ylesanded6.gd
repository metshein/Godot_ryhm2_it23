extends Node2D

var vaenlase_elud = 100
var padrunid = 5
var laskude_arv = 0.0
var pihtas = 0.0


func _ready():
	$"3884351-kenafinalbossthumb/gameover".visible = false

func _process(_delta):
	$"3884351-kenafinalbossthumb/skoor".text = "Skoor: "+str(pihtas)
	$"3884351-kenafinalbossthumb/elud".text = "Elud: "+str(vaenlase_elud)
	if Input.is_action_just_pressed("shoot") && padrunid>0 && vaenlase_elud>0:
		print("piupiu")
		$"3884351-kenafinalbossthumb/tegevused".text = "piupiu"
		padrunid -= 1
		laskude_arv += 1
		print(padrunid)
		$"3884351-kenafinalbossthumb/padrunid".text = str(padrunid)
		
		var tabamine =  randi() % 3
		if tabamine > 0:
			vaenlase_elud -= randi() % 5 + 8
			pihtas += 1
			print("Pihtas")
			$"3884351-kenafinalbossthumb/tegevused".text = "Pihtas"
		else:
			print("Möödas")
			$"3884351-kenafinalbossthumb/tegevused".text = "Möödas"
		print(vaenlase_elud)
		
	if Input.is_action_just_pressed("reload"):
		padrunid = 5
		print("laen")
		$"3884351-kenafinalbossthumb/tegevused".text = "Laen"
		$"3884351-kenafinalbossthumb/padrunid".text = str(padrunid)
		
	if vaenlase_elud <= 0:
		$"3884351-kenafinalbossthumb/gameover".visible = true
		print("GAME OVER")
		var skill = float(pihtas)/float(laskude_arv)*100
		print("Skill: %0.2f" % skill)
		$"3884351-kenafinalbossthumb/skoor".text = "Skoor: "+str(pihtas)
		$"3884351-kenafinalbossthumb/elud".text = "Elud: 0"
		get_tree().paused = true
