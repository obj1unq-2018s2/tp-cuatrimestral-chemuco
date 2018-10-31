import items.*
import minions.*

class Campeon {

	var property items = []
	const property puntosDeAtaque = 0
	const property puntosDeVida = 0
	var property danioRecibido = 0
	var property cantidadDeBloqueos = 0

	
	method ataqueAgregado() = items.sum {
		item => item.ataqueQueAporta(self)
	}

	
	method vidaAgregada() = items.sum {
		item => item.vidaQueAporta(self)
	} 

	method vidaDeCampeon() {
		return puntosDeVida + self.vidaAgregada()
	}


	method ataqueDeCampeon() = puntosDeAtaque + self.ataqueAgregado()


	method atacarOleada(minion) = minion.recibirAtaque(self)
	
	
	method recibirAtaque(danio) {
		if ( cantidadDeBloqueos > 0) {
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

	method estaVivo() = danioRecibido < self.vidaDeCampeon()

}

