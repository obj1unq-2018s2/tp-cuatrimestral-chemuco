import campeones.*
import items.*

class OleadaDeMinions {
	var property cantidadDeMinions = 0
	var property plusDeAtaque = 0
	
	method puntosDeAtaque(){
		return cantidadDeMinions + plusDeAtaque
	}
	
	method recibirAtaque(campeon) {
		
		var minionsAntesDelAtaque = cantidadDeMinions
		
		if(cantidadDeMinions-campeon.ataqueDeCampeon() < 0) {
				cantidadDeMinions=0
				campeon.dinero(campeon.dinero() + minionsAntesDelAtaque) ///OJO AL PIOJO
				}
		
		else {
				cantidadDeMinions-=campeon.ataqueDeCampeon()
			 	campeon.dinero(campeon.dinero() + campeon.ataqueDeCampeon())/// OJO AL PIOJO
			 	}
		
		
		return self.defenderAtaque(campeon)
	
	
	}
	
	method defenderAtaque(campeon) {
		return campeon.recibirAtaque(self.puntosDeAtaque())
	}
	
	
	method estaMuerto(){
		
		return cantidadDeMinions <= 0
		
	}
}


