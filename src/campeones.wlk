import items.*
import minions.*

class Campeon {
	var property items = []
	var property puntosDeAtaque = 0
	var property puntosDeVida = 0
	var property danioRecibido = 0
	var property cantidadDeBloqueos = 0
	
	method atacarA(minion) {
		 minion.defenderDe(self)
	}
		
	method equipar(item) {
		items.add(item)	
		item.equiparA(self)			
	}
	
	method desequipar(item) {
       items.remove(item)
       item.desequiparA(self)	
    }
    
    method estaVivo() = danioRecibido < puntosDeVida

}