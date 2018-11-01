import campeones.*

class AnilloDeDoran {
	
	
	method precio() = 300
	
	method vidaQueAporta(campeon) = 60
	
	method ataqueQueAporta(campeon) = 15
	
	method habilidadActivable(campeon){}	
	
	method equiparA(campeon) {
		campeon.danioRecibido(campeon.danioRecibido() + 5)
	}

	method desequiparA(campeon) {
		campeon.danioRecibido(campeon.danioRecibido() - 10)		
	}

}

class TomoAmplificador {
	
	var property utilizoHabilidad
	
	method precio() = 500
						
	method vidaQueAporta(campeon) = campeon.danioRecibido() * 0.25	
		
    method ataqueQueAporta(campeon) = campeon.danioRecibido() * 0.05
   
	method equiparA(campeon) {
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 2)
	}

	method desequiparA(campeon) {
		campeon.cantidadDeBloqueos(campeon.cantidadDeBloqueos() + 1)
		campeon.danioRecibido(campeon.danioRecibido() + 30)
	}

	method habilidadActivable(campeon){ if (not utilizoHabilidad)
		
										if (campeon.dinero() < 500) campeon.dinero(500)
											
											}
}

class SombreroDeRabadon inherits TomoAmplificador {
	
	
	override method precio()= super() + 100

    override method vidaQueAporta(campeon) = super(campeon) + 5
    
    override method ataqueQueAporta(campeon) = super(campeon) * 2
	    
	override method equiparA(campeon) {
		super(campeon)
		campeon.danioRecibido(campeon.danioRecibido() + 5)
	}

	override method desequiparA(campeon) {}

	override method habilidadActivable(campeon){}	
}


class PocionDeVida {
	
	var property usos= 2
	
	method precio()= 50
	
	method vidaQueAporta(campeon)=0
	
	method ataqueQueAporta(campeon)=0
	
	method equiparA(campeon){}
	
	method desequiparA(campeon){}
	
		method habilidadActivable(campeon){	if(usos > 0) 
					campeon.danioRecibido(campeon.danioRecibido() - 50)
					usos -= 1
	}	
	
	
	
	
	
	
	
	
}
