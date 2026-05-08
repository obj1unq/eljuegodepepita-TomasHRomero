import wollok.game.*
import extras.*
import direcciones.*

object pepita {

    var property position = game.at( 5, 2 )
	var  energia = 100
	var  property perseguidor = silvestre
	
	method image() = self.estado()

	method estado() {
		return 	if ( self.atrapada() || self.sinEnergía() ) 
					"pepita-gris.png"
				else 
					"pepita.png"
	}

	method atrapada() = position == perseguidor.position()

	method positionX() = position.x()

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}

	method volar(kms) {
		energia = energia - ( 9 * kms )
	}
	
	method energia() {
		return energia
	}

	method mover(dirección) {

		if ( not self.sinEnergía() ) {

			const nuevaPosicion = dirección.siguiente(position)

			const distancia = position.distance(nuevaPosicion)

			self.volar(distancia)

			position = nuevaPosicion
		}
		else
		game.stop()
	}

	method sinEnergía() = energia <= 0

	method caer() {
		position = position.down(1)
	}
}

