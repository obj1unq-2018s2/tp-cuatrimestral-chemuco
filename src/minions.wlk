import campeones.*
import items.*

class OleadaDeMinions {
	var property cantidadDeMinions = 0
	var property plusDeAtaque = 0
	
	method puntosDeAtaque(){
		return cantidadDeMinions + plusDeAtaque
	}
	
	method recibirAtaque(campeon) {
		return self.defenderAtaque(campeon)
	}
	
	method defenderAtaque(campeon) {
		return campeon.recibirAtaque(self.puntosDeAtaque())
	}
	
	
	
}


