import campeones.*

class AnilloDeDoran {
	const property puntosDeVida = 60
	const property puntosDeAtaque = 15
	

	
		method equiparA(campeon) { 
		campeon.danioRecibido(campeon.danioRecibido() + 5)
		campeon.vidaAgregada(campeon.vidaAgregada() + puntosDeVida)
		campeon.ataqueAgregado(campeon.ataqueAgregado() + puntosDeAtaque)
	}
	
		method desequiparA(campeon) {
		campeon.danioRecibido(campeon.danioRecibido() - 10)
		campeon.vidaAgregada(campeon.vidaAgregada() - puntosDeVida)
		campeon.ataqueAgregado(campeon.ataqueAgregado() - puntosDeAtaque)
	}  
	

}

class TomoAmplificador {	
	
	method equiparA(campeon) {
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 2)
		campeon.vidaAgregada(campeon.vidaAgregada() + campeon.danioRecibido() * 0.25)
		campeon.ataqueAgregado(campeon.ataqueAgregado() + campeon.danioRecibido() * 0.05)
	}		
	
	
	
	
	method desequiparA(campeon) {
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 1)
		campeon.danioRecibido(campeon.danioRecibido() + 30 )
		campeon.vidaAgregada(campeon.vidaAgregada() - campeon.danioRecibido() * 0.25)
		campeon.ataqueAgregado(campeon.ataqueAgregado() - campeon.danioRecibido() * 0.05)
	}  
	

		
}

class SombreroDeRabadon {
	

	
	
		method equiparA(campeon) {		
		campeon.vidaAgregada(campeon.vidaAgregada() - campeon.danioRecibido() * 0.25 + 5)
		campeon.ataqueAgregado(campeon.ataqueAgregado() * 2 )
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 2)
		campeon.danioRecibido(campeon.danioRecibido() + 5 )
	}
	
	method desequiparA(campeon) {}
}


