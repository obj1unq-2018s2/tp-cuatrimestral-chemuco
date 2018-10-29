import items.*
import minions.*

class Campeon {
	var property items = []
//	var property ataque = 0
//	var property vida = 0
	const property puntosDeAtaque =0
	const property puntosDeVida= 0
	var property danioRecibido = 0
	var property cantidadDeBloqueos = 0
	var property vidaAgregada = 0          //El valor se lo da el item equipado
	var property ataqueAgregado = 0       //Lo mismo que arriba

	
	method vidaDeCampeon(){return puntosDeVida + vidaAgregada }//Para no modificar la constante
	
	method ataqueDeCampeon()= puntosDeAtaque + ataqueAgregado
	
	
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
    
    method estaVivo() = danioRecibido < self.vidaDeCampeon()

}