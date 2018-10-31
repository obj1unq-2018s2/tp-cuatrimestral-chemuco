import campeones.*

class AnilloDeDoran {

	method vidaQueAporta(campeon) = 60
	method ataqueQueAporta(campeon) = 15

	method equiparA(campeon) {
		campeon.danioRecibido(campeon.danioRecibido() + 5)
	}


	method desequiparA(campeon) {
		campeon.danioRecibido(campeon.danioRecibido() - 10)
		
	}

}

class TomoAmplificador {

	method vidaQueAporta(campeon) = campeon.danioRecibido() * 0.25		
    method ataqueQueAporta(campeon) = campeon.danioRecibido() * 0.05
   
	method equiparA(campeon) {
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 2)
	}


	method desequiparA(campeon) {
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 1)
		campeon.danioRecibido(campeon.danioRecibido() + 30)
	}

}

class SombreroDeRabadon inherits TomoAmplificador {

    override method vidaQueAporta(campeon) = super(campeon) + 5
    override method ataqueQueAporta(campeon) = super(campeon) * 2
    
	override method equiparA(campeon) {
		super(campeon)
		campeon.danioRecibido(campeon.danioRecibido() + 5)
	}

	override method desequiparA(campeon) {
	}

}

