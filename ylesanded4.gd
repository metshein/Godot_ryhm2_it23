extends Node2D

var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","
	Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin",
	"Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins",
	"Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey",
	"Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]

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
