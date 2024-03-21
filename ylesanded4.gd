extends Node2D

var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","
	Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin",
	"Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins",
	"Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey",
	"Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
	
	
var player = {"posx":100, "posy":38, "health":16, "items":["sword","stuff", "bow"], "gold":100}


func _ready():
	print("Mängijate arv: ",len(players))
	print("Esimene: ",players[0])
	players.sort()
	var tyyp = players.find("Rayes",0)
	players.erase(tyyp)
	players.append("Mario")
	var pikimaNimePikkus = 0
	var pikimNimi = ""
	for i in players:
		if pikimaNimePikkus<len(i):
			pikimaNimePikkus = len(i)
			pikimNimi = i
		print(i)
	print("Pikim nimi: ",pikimNimi)	
	
	
	for i in range(5):
		player.gold+=randi() % 19
	print("Mängijal on ",player.gold," kulda")
