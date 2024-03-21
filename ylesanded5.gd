extends Node2D

var eksami_tulem = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]

# Called when the node enters the scene tree for the first time.
func _ready():
	palk(20,20)
	palk(50,20)
	keskmine(eksami_tulem)
	koik(eksami_tulem)
	hindamine(eksami_tulem)
	
func palk(tunnid, tasu):
	var palka = 0
	if tunnid>40:
		palka=tunnid*tasu
	else:
		palka = 40*tasu+(tunnid-40)*1.5*tunnid
	print(round(palka))
	
func keskmine(tulemused):
	var summa = 0
	for p in tulemused:
		summa+=p
	var kokku = len(tulemused)
	var keskm = summa / kokku
	print("Keskmine tulemus: ",keskm)
	
func koik(tulemused):
	print(", ".join(tulemused))
	
func hindamine(tulemused):
	for i in tulemused:
		if i > 90:
			print(i,"p - ", 5)
		elif i > 75:
			print(i,"p - ", 4)
		elif i > 50:
			print(i,"p - ", 3)
		else:
			print(i,"p - ", 2)

