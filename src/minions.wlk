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
		
		if( cantidadDeMinions-campeon.ataqueDeCampeon() < 0 ) {
			 cantidadDeMinions=0
			 //campeon.dinero(campeon.dinero() + minionsAntesDelAtaque) ///OJO AL PIOJO
			 campeon.actualizarDinero(minionsAntesDelAtaque) //Me parece mas prolijo que lo de arriba
			}
		
		else {
			 cantidadDeMinions-=campeon.ataqueDeCampeon()
			 //campeon.dinero(campeon.dinero() + campeon.ataqueDeCampeon())/// OJO AL PIOJO
			 campeon.actualizarDinero(campeon.ataqueDeCampeon()) //Me parece mas prolijo que lo de arriba
			}
		
		self.defenderAtaque(campeon, minionsAntesDelAtaque + plusDeAtaque)
	}
	
	method defenderAtaque(campeon,puntosDeDanio) {
		campeon.recibirAtaque(puntosDeDanio)
	}	
	
	method estanMuertos(){
		
		return cantidadDeMinions <= 0
		
	}
}

class EjercitoDeMinions{
	
	var property oleadasDeMinions=[]
	
	
	method ejercitoMuerto() {
		
		return oleadasDeMinions.all{oleada => oleada.estanMuertos()
		}
	}
	
	method recibirAtaqueAEjercito(campeon) {
		
		oleadasDeMinions.forEach{oleada => if (not oleada.estanMuertos()) oleada.recibirAtaque(campeon)}
		
	}
	
		
}

