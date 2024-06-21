extends Node

var rng = RandomNumberGenerator.new()

var StatViande; #Stat utilise pour les monstres carnivore
var StatLegume; #Stat utilise pour les monstres vegetarien
var ressources; #jsp quel ressource ont utilise je fait un placeholder
var Energie; #energie disponible pour la journee, reset chaque matin
var TotalBonheur; #bonheur total des montsre du bateau
var PourcentageBonheur;
var TotalMonstres; #le total de monstres
var TotalCases; #le total de cases
var TotalCasesDisponible; #le total de cases non occupe

var Dict_quete={"Gather vegetables":1,
				"Hunt for meat":2,
				"Gather Ressources":3,
				"Add a row to your ship":4,
				"Add a column to your ship":5}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func executerQuete(idQuete):
	match idQuete:
		1:
			queteLegume()
		2:
			queteViande()
		3:
			queteRessources()
		4:
			queteRangee()
		5:
			queteColonne()
		
	pass

func queteViande():
	
	pass
	
func queteLegume():
	pass

func queteRessources():
	pass

func queteColonne():
	pass
	
func queteRangee():
	pass
