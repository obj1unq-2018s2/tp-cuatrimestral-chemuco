import items.*
import minions.*

class Campeon {

	var property items = []
	const property puntosDeAtaque = 0
	const property puntosDeVida = 0
	var property danioRecibido = 0
	var property cantidadDeBloqueos = 0
	var property dinero

	method inventario() = self.items()

	method ataqueAgregado() = self.inventario().sum{ item => item.ataqueQueAporta(self) }

	method vidaAgregada() = self.inventario().sum{ item => item.vidaQueAporta(self) }

	method vidaDeCampeon() = puntosDeVida + self.vidaAgregada()

	method ataqueDeCampeon() = puntosDeAtaque + self.ataqueAgregado()

	method modificarDanio(numero) {
		if (self.danioRecibido() - numero < 0) danioRecibido = 0 else self.danioRecibido() - numero
	}

	// TODO Estaría bueno que oleada y ejercito fueran polimorficos, para hacer lo mismo en ambos casos.    
	
	///
	
	method atacarA(minion) {		//AGREGADO POR LAUTA
		
		minion.recibirAtaque(self)
		
	}
	 
	method disminuirDanio() {  ////AGREGADO POR LAUTA
		 
	}
	
	///
//	method atacarOleada(minion) {
///		if (not minion.estanMuertos()) {
//			self.doAtacarOleada(minion)
//		}
//	}
	
//	method doAtacarOleada(minion) {
//		minion.recibirAtaque(self)
//	}	

//	method atacarEjercito(ejercito) {
//		ejercito.recibirAtaqueAEjercito(self)
//	}

	method recibirAtaque(danio) {
		if (cantidadDeBloqueos > 0) {
			cantidadDeBloqueos -= 1
		} else {
			danioRecibido += danio
		}
	}

	method equipar(item) {
		items.add(item)
		item.equiparA(self)
	}

	method desequipar(item) {
		items.remove(item)
		item.desequiparA(self)
	}

	method alcanzaDinero(item) = dinero >= item.precio()

	method comprar(item) {
		if (self.alcanzaDinero(item)) {
			self.equipar(item)
			dinero -= item.precio()
		}else{
			self.error("Dinero insuficiente")	
		}
	}

	method vender(item) {
		self.desequipar(item)
		dinero += item.precio() / 2
	}

	method actualizarDinero(minionsQueMurieron) {
		self.dinero(self.dinero() + minionsQueMurieron)
	}

	method estaVivo() = danioRecibido < self.vidaDeCampeon()

}

class Soporte inherits Campeon {

	var property campeonVinculado
	
//	override method doAtacarOleada(minion){
//		campeonVinculado.danioRecibido(campeonVinculado.danioRecibido() - 10)
//		super(minion)
//	}
	
	////
	
	override method disminuirDanio() { //AGREGADO POR LAUTA
		campeonVinculado.danioRecibido(campeonVinculado.danioRecibido() - 10)
	}
	
	////

	override method inventario() = campeonVinculado.inventario() + self.items()

}

