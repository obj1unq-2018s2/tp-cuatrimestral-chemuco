import campeones.*
import items.*

class OleadaDeMinions {
	var property cantidadDeMinions = 0
	var property plusDeAtaque = 0
	
	method puntosDeAtaque(){
		return cantidadDeMinions + plusDeAtaque
	}
	
	method defenderDe(campeon) {
		if(campeon.cantidadDeBloqueos() > 0){
			
			campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() - 1)
		}else{
			
			campeon.danioRecibido(campeon.danioRecibido() + self.puntosDeAtaque())
		}
	}
	
}


