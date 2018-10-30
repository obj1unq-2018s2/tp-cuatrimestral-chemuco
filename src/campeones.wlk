import items.*
import minions.*

class Campeon {

	var property items = []
	const property puntosDeAtaque = 0
	const property puntosDeVida = 0
	var property danioRecibido = 0
	var property cantidadDeBloqueos = 0

	// Lo mismo que arriba
	var property ataqueAgregado = 0 

	// El valor se lo da el item equipado
	method vidaAgregada() = items.sum {
		item => item.vidaQueAporta()
	} 

	method vidaDeCampeon() {
		return puntosDeVida + self.vidaAgregada()
	} // Para no modificar la constante


	method ataqueDeCampeon() = puntosDeAtaque + ataqueAgregado


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

