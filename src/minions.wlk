import campeones.*
import items.*

class OleadaDeMinions {

	var property cantidadDeMinions = 0
	var property plusDeAtaque = 0

	method puntosDeAtaque() {
		return cantidadDeMinions + plusDeAtaque
	}

	method recibirAtaque(campeon) {
		var minionsAntesDelAtaque = cantidadDeMinions
		
		if (not (self.estanMuertos())) {/// AGREGADO POR LAUTA
							if (cantidadDeMinions - campeon.ataqueDeCampeon() < 0) {
									cantidadDeMinions = 0
										campeon.actualizarDinero(minionsAntesDelAtaque)
		} 					else {
								cantidadDeMinions -= campeon.ataqueDeCampeon()
								campeon.actualizarDinero(campeon.ataqueDeCampeon())
		}
							self.defenderAtaque(campeon, minionsAntesDelAtaque + plusDeAtaque)
							campeon.disminuirDanio() ///AGREGADO POR LAUTA
		
		}
		
	}

	method defenderAtaque(campeon, puntosDeDanio) {
		campeon.recibirAtaque(puntosDeDanio)
	}

	method estanMuertos() {
		return cantidadDeMinions <= 0
	}

}

class EjercitoDeMinions {

	var property oleadasDeMinions = []

	method ejercitoMuerto() {
		return oleadasDeMinions.all{ oleada => oleada.estanMuertos() }
	}

//	method recibirAtaqueAEjercito(campeon) {
//		oleadasDeMinions.forEach{ oleada => campeon.atacarOleada(oleada)}
//	}
	
	method recibirAtaque(campeon) {///AGREGADO POR LAUTA
		oleadasDeMinions.forEach{ oleada => oleada.recibirAtaque(campeon)}
	}

}

