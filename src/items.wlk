import campeones.*

class AnilloDeDoran {
	var property puntosDeVida = 60
	var property puntosDeAtaque = 15
	
	method equiparA(campeon) { 
		campeon.danioRecibido(campeon.danioRecibido() + 5)
		campeon.puntosDeVida(campeon.puntosDeVida() + puntosDeVida)
		campeon.puntosDeAtaque(campeon.puntosDeAtaque() + puntosDeAtaque)
	}
	
	method desequiparA(campeon) {
		campeon.danioRecibido(campeon.danioRecibido() - 10)
		campeon.puntosDeVida(campeon.puntosDeVida() - puntosDeVida)
		campeon.puntosDeAtaque(campeon.puntosDeAtaque() - puntosDeAtaque)
	}  
}

class TomoAmplificador {	
	
	method equiparA(campeon) {
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 2)
		campeon.puntosDeVida(campeon.puntosDeVida() + campeon.danioRecibido() * 0.25)
		campeon.puntosDeAtaque(campeon.puntosDeAtaque() + campeon.danioRecibido() * 0.05)
	}		
	
	method desequiparA(campeon) {
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 1)
		campeon.danioRecibido(campeon.danioRecibido() + 30 )
		campeon.puntosDeVida(campeon.puntosDeVida() - campeon.danioRecibido() * 0.25)
		campeon.puntosDeAtaque(campeon.puntosDeAtaque() - campeon.danioRecibido() * 0.05)
	}  
		
}

class SombreroDeRabadon {
	
	method equiparA(campeon) {		
		campeon.puntosDeVida(campeon.puntosDeVida() - campeon.danioRecibido() * 0.25 + 5)
		campeon.puntosDeAtaque(campeon.puntosDeAtaque() * 2 )
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 2)
		campeon.danioRecibido(campeon.danioRecibido() + 5 )
	}
	
	method desequiparA(campeon) {}
}


