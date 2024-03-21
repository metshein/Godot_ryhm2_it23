extends Node2D

var money = 50
var price = 100
var a = 10
var b = 20

func _ready():
	#Lahenda olukord, kus kasutajal on teatud kogus raha ja ta soovib osta mingit toodet. Kirjuta kood, kas ta saab oma raha eest kauba kätte. Kui ei saa, siis väljasta, kui palju puudu jääb.
	if money < price:
		print(price-money," raha jääb puudu")
	else:
		print("Toode on sinu!")
	

#Kirjuta kood, mis arvutab kahe täisarvu järgi ristküliku pindala ning väljastab, kas tegemist on just ristkülikuga või ruuduga.
	if a == b:
		print("Võimalik ruut")
	else:
		print("Arvatavasti ristkülik")
